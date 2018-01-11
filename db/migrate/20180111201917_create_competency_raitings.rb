class CreateCompetencyRaitings < ActiveRecord::Migration[5.1]
  def change
    create_table :competency_raitings do |t|
      t.string :name
      t.integer :rank
      t.text :description
      t.references :competency, foreign_key: true

      t.timestamps
    end
  end
end
