class CreateCheckboxes < ActiveRecord::Migration[6.1]
  def change
    create_table :checkboxes do |t|
      t.references :round, null: false, foreign_key: true
      t.references :sawal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
