class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :user_id
      t.date :start_date

      t.timestamps
    end
  end
end
