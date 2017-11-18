class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
