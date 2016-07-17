class Player < ActiveRecord::Base
  has_many :gradings
  belongs_to :team
end
