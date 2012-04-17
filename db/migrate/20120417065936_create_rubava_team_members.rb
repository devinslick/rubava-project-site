class CreateRubavaTeamMembers < ActiveRecord::Migration
  def change
    create_table :rubava_team_members do |t|
      t.string :name
      t.text :contributions
      t.text :biography
      t.boolean :lefthanded

      t.timestamps
    end
  end
end
