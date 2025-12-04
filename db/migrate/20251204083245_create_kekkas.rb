class CreateKekkas < ActiveRecord::Migration[8.1]
  def change
    create_table :kekkas do |t|
      t.string :result
      t.string :message
      t.integer :number

      t.timestamps
    end
  end
end
