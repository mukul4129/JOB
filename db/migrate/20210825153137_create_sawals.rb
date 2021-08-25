class CreateSawals < ActiveRecord::Migration[6.1]
  def change
    create_table :sawals do |t|
      t.string :question_type

      t.timestamps
    end
  end
end
