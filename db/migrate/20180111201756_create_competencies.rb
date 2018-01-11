class CreateCompetencies < ActiveRecord::Migration[5.1]
  def change
    create_table :competencies do |t|
      t.string :name
      t.integer :rank
      t.text :description

      t.timestamps
    end
  end
end
