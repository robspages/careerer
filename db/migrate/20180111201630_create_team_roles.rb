class CreateTeamRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :team_roles do |t|
      t.string :name
      t.string :rank
      t.text :description

      t.timestamps
    end
  end
end
