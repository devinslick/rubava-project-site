class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :repo
      t.string :license
      t.string :prodURL
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
