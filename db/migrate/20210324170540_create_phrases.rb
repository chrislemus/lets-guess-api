class CreatePhrases < ActiveRecord::Migration[6.1]
  def change
    create_table :phrases do |t|
      t.string :phrase
      t.integer :category_id
      t.timestamps
    end
  end
end
