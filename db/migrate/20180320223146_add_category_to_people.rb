class AddCategoryToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :category, :string
  end
end
