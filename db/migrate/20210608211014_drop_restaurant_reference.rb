class DropRestaurantReference < ActiveRecord::Migration[6.0]
  def change
    if foreign_key_exists?(:reviews, :restaurants)
      remove_foreign_key :reviews, :restaurants
    end
  end
end
