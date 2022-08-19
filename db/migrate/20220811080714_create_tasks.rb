class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :Name
      t.string :Due_date
      t.boolean :Status

      t.timestamps
    end
  end
end
