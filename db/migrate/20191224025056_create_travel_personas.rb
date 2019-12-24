class CreateTravelPersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :travel_personas do |t|
      t.integer :user_id
      t.integer :party_level_id
      t.integer :age_cohort_id
      t.integer :activities_id
      t.integer :city_id

      t.timestamps
    end
  end
end
