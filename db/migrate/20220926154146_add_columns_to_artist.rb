class AddColumnsToArtist < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :first_name, :string
    add_column :artists, :last_name, :string
    add_column :artists, :alternate_name, :string
    add_column :artists, :description, :text
    add_column :artists, :telephone, :string
    add_column :artists, :address, :string
    add_column :artists, :url, :string
  end
end
