class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :power
      t.string :typee
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
