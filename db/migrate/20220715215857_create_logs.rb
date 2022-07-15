class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.text :user
      t.text :action

      t.timestamps
    end
  end
end
