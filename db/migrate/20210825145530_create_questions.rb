class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :question_type
      t.text :question
      t.text :description
      t.integer :marks
      t.references :round, null: false, foreign_key: true

      t.timestamps
    end
  end
end
