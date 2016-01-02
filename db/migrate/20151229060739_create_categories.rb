class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :timebox
      t.string :name
      t.integer :time

      t.timestamps null: false

      t.references :project
    end
  end
end
