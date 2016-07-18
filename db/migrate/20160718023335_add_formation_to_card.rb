class AddFormationToCard < ActiveRecord::Migration
  def change
    add_column :cards, :formation, :text
  end
end
