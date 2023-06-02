class CreatePowers < ActiveRecord::Migration[7.0]
  def change
    create_table :powers do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :rarity
      t.string :universe
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
