class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :authors
      t.string :url

      t.timestamps
    end
  end
end
