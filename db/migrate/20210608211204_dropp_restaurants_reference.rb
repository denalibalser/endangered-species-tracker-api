class DroppRestaurantsReference < ActiveRecord::Migration[6.0]
  def change
    if foreign_key_exists?(:restaurants, :states)
      remove_foreign_key :restaurants, :states
    end
  end
end
