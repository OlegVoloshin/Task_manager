class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :priority
      t.datetime :deadline
      t.boolean :done

      t.timestamps
    end
  end
end
