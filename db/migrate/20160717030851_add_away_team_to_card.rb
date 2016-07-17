class AddAwayTeamToCard < ActiveRecord::Migration
  def change
    add_column :cards, :away_team, :string
  end
end
