class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.text :description
    end

    add_index :projects, :slug, unique: true
  end
end