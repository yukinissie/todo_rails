class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.text :description
      t.int :column_id
      t.time :deadline

      t.timestamps
    end
  end
end
