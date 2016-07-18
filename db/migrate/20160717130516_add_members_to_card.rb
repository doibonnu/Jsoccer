class AddMembersToCard < ActiveRecord::Migration
  def change
    add_column :cards, :home_members, :text
    add_column :cards, :away_members, :text
  end
end
