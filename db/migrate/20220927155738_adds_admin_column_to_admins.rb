class AddsAdminColumnToAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :admin, :boolean, default: false, null: false
  end
end
