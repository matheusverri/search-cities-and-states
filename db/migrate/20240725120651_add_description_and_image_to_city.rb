class AddDescriptionAndImageToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :url_image, :string
    add_column :cities, :description, :string
  end
end
