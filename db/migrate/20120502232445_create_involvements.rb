class CreateInvolvements < ActiveRecord::Migration
  def change
    create_table :involvements do |t|
      t.string :role
      t.text :contributions
      t.integer :member_id
      t.integer :project_id

      t.timestamps
    end
  end
end
