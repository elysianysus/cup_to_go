class AddCategoryToCups < ActiveRecord::Migration[7.1]
  def change
    add_column :cups, :category, :string
    remove_column :cups, :type, :string
  end
end
