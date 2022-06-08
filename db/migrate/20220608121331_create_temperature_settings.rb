class CreateTemperatureSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :temperature_settings do |t|
      t.integer :cold_temperature
      t.integer :warm_temperature
      t.integer :hot_temperature
      t.timestamps
    end
  end
end
