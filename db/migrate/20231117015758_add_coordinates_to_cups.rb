class AddCoordinatesToCups < ActiveRecord::Migration[7.1]
  def change
    add_column :cups, :latitude, :float
    add_column :cups, :longitude, :float
  end
end
