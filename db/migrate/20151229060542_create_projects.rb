class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :time
      t.integer :timebox
      t.string :name
      t.string :description

      t.timestamps null: false

      t.references :user
    end
  end
end
