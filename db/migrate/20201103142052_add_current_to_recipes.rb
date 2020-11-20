class AddCurrentToRecipes < ActiveRecord::Migration[6.0]
  def change
    change_table :recipes do |t|
      t.boolean :current, :default => true
    end
  end
end
