class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :property_id
      t.string :adresse
      t.string :property_type
      t.boolean :status
      t.integer :surface
      t.integer :bed
      t.integer :bath
      t.integer :garage
      t.string :title
      t.string :content
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
