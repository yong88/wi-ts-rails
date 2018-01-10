ActiveAdmin.register Schedule do
  permit_params :name, :date, :status, :install_time, :address, :phone_number, :member, :install_type

  index do
    selectable_column
    id_column
    column :name
    column :date
    column :status
    column :address
    actions
  end

  show do
    attributes_table do
      row :name
      row :date
      row :status
      row :address
    end
    active_admin_comments
  end

  filter :name
  filter :date
  filter :status
  filter :address

  form do |f|
    f.inputs do
      f.input :name
      f.input :date
      f.input :status
      f.input :address
    end
    f.actions
  end

end
