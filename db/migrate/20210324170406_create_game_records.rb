class CreateGameRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :game_records do |t|
      t.string :username
      t.time :time
      t.int :phrase_id

      t.timestamps
    end
  end
end
