class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.string :name
      t.references :naukri, null: false, foreign_key: true

      t.timestamps
    end
  end
end
