ActiveAdmin.register Customer do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :full_name, :phone_number, :email_address, :notes, :image
    #
    # or
    #
    # permit_params do
    #   permitted = [:full_name, :phone_number, :email_address, :notes]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end

    # Customize the index page
    index do
      selectable_column
      id_column
      column :full_name
      column :phone_number
      column :email_address
      column :notes
      column :created_at
      column :updated_at
      actions
    end

    # Configure search filters
    filter :full_name
    filter :phone_number
    filter :email_address
    filter :notes
    filter :created_at
    filter :updated_at

  # Form for customer details.
  form do |f|
    f.inputs "Customer" do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :full_name
      row :phone_number
      row :email_address
      row :notes
      row :image do |customer|
        image_tag customer.image if customer.image.attached?
      end
    end
  end
end
