 class AddCompletedToRounds < ActiveRecord::Migration[5.1]
  def change
    add_column :rounds, :completed, :boolean, :default => false
  end
end
