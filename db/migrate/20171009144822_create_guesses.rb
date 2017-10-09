class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.integer :counter
      t.boolean :correct
      t.integer :round_id
      t.integer :card_id

      t.timestamps
    end
  end
end
