class AddFieldsToRounds < ActiveRecord::Migration[6.1]
  def change
    add_column :rounds, :option_type, :string
  end
end
