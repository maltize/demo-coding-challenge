class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :monster_1_id
      t.integer :monster_2_id
      t.integer :monster_3_id
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
