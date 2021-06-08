class DropStatesReference < ActiveRecord::Migration[6.0]
  def change
    if foreign_key_exists?(:states, :restaurants)
      remove_foreign_key :states, :restaurants
    end
  end
end
