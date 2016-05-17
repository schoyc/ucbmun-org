ActiveAdmin.register Attraction do
  permit_params :name, :x_pos, :y_pos, :description, :image

  # index do
  #   column :name
  #   column :x_pos
  #   column :y_pos
  #   column :description
  #   column :image
  #
  #   actions
  # end
  # form do |f|
  #   f.inputs "Admin Details" do
  #     f.input :university
  #     f.input :delegates_count
  #     f.input :name
  #     f.input :email
  #     f.input :address
  #     f.input :city
  #     f.input :state
  #     f.input :zip
  #     f.input :country, :as => :string
  #
  #   end
  #   f.actions
  # end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
