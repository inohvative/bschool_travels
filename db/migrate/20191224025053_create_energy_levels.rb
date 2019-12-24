class CreateEnergyLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :energy_levels do |t|
      t.string :party_level

      t.timestamps
    end
  end
end
