class RemoveFieldsFromRounds < ActiveRecord::Migration[6.1]
  def change
    remove_column :rounds, :type, :string
  end
end
