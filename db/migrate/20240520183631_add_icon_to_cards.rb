class AddIconToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :icon, :string
  end
end
