class CreateCreativeWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :creative_works do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
