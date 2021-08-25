class AddObtainMarksToRounds < ActiveRecord::Migration[6.1]
  def change
    add_column :rounds, :obtain_marks, :integer
  end
end
