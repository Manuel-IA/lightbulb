class CreateBulbs < ActiveRecord::Migration[7.0]
  def change
    create_table :bulbs do |t|
      t.boolean :status, null: false

      t.timestamps
    end
  end
end
