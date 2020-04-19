class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :priority
      t.datetime :deadline
      t.boolean :done
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
