ActiveAdmin.register User do
  permit_params :email, :admin, :confirmed_at
  
  filter :email_contains

  index do
    selectable_column
    column :id
    column :email
    column :admin
    column :created_at
    column :updated_at
    column :confirmed do |r|
      r.confirmed_at ? 'Yes' : 'No'
    end
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :email
      f.input :admin
      f.input :confirmed_at
    end
    f.actions
  end

end
