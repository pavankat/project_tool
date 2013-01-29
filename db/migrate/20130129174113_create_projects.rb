class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :name
      t.datetime :started_at
      t.integer :started_by_id
      t.datetime :completed_at
      t.integer :completed_by_id

      t.timestamps
    end
  end
end
