class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :role
      t.text :about
      t.string :facebook
      t.string :twitter
      t.string :instagram

      t.timestamps
    end
  end
end
