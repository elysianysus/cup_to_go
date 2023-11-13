class CreateCups < ActiveRecord::Migration[7.1]
  def change
    create_table :cups do |t|
      t.string :name
      t.string :type
      t.string :location
      t.integer :volume
      t.string :description
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
