class Card < ActiveRecord::Base
  belongs_to :team

  serialize :home_members
  serialize :away_members
end
