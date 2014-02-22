require 'chunky_png'
require 'sprite_factory'

namespace :assets do
  desc 'recreate sprite images and scss'
  task :resprite => :environment do
    FileUtils.mkdir_p('app/assets/images/sprites')
    FileUtils.mkdir_p('app/assets/stylesheets/sprites')

    selector = '.icon-'

    SpriteFactory.library = :chunkypng
    SpriteFactory.layout = :vertical
    SpriteFactory.nocomments = true

    if Dir[Rails.root.join('app', 'assets', 'images', 'icons', '**', '*.{png,jpg,jpeg,gif}')].length > 0
      SpriteFactory.run!('app/assets/images/icons',
                         selector: selector,
                         cssurl: "asset-url('sprites/$IMAGE')",
                         style: :scss,
                         output_image: 'app/assets/images/sprites/icons.png',
                         output_style: 'app/assets/stylesheets/sprites/_icons.scss')
    end

    if Dir[Rails.root.join('app', 'assets', 'images', 'icons-hidpi', '**', '*.{png,jpg,jpeg,gif}')].length > 0
      SpriteFactory.run!('app/assets/images/icons-hidpi',
                         output_image: 'app/assets/images/sprites/icons-hidpi.png',
                         output_style: 'app/assets/stylesheets/sprites/_icons-hidpi.scss') do |images|
        styles = []
        images.each do |name, image|
          name = name.to_s.gsub(/@2x/, '')
          attr = [
            "width: #{image[:cssw]}px",
            "height: #{image[:cssh]}px",
            "background: asset-url('sprites/icons-hidpi.png') #{-image[:cssx]}px #{-image[:cssy]}px no-repeat"
          ]

          styles << <<-SCSS
  #{selector}#{name} {
    @include hidpi(2.0) {
      #{SpriteFactory::Style.css_style(attr)}
    }
  }
          SCSS
        end

        styles << ""
        styles.join("\n")
      end
    end
  end

  task :precompile => :resprite
end
