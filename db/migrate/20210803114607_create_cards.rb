class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.text :discription
      t.integer :column_id
      t.datetime :deadline

      t.timestamps
    end
  end
end
