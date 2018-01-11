ActiveAdmin.register Schedule do
  permit_params :name, :date, :status, :time, :address, :phone_number, :member, :install_type

  index do
    selectable_column
    id_column
    column :name
    column :date
    column :time
    column :status
    column :address
    column "Phone Number" do |d|
      number_to_phone(d.phone_number, pattern: /(\d{0,2})(\d{3,4})(\d{4})$/, area_code: true)
    end

    actions
  end

  show do
    attributes_table do
      row :name
      row :date
      row :time
      row :status
      row :address
      row :phone_number
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
      f.input :time
      f.input :status
      f.input :address
      f.input :phone_number
    end
    f.actions
  end

end
