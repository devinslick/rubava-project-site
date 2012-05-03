class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :twitter
      t.boolean :leftHanded
      t.string :homepage
      t.text :biography

      t.timestamps
    end
  end
end
