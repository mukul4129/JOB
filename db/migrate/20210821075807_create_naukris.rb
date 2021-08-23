class CreateNaukris < ActiveRecord::Migration[6.1]
  def change
    create_table :naukris do |t|
      t.string :name

      t.timestamps
    end
  end
end
