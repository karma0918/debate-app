class CreateReferees < ActiveRecord::Migration[6.0]
  def change
    create_table :referees do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.integer    :voting_id
      t.timestamps
    end
  end
end
