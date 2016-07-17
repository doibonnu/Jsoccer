class TeamsController < ApplicationController

def index
  @j1teams = Team.where('id < 19')
  @j2teams = Team.where('id > 18').where('id < 41')
  @j3teams = Team.where('id > 40').where('id <= 56')
end

def show
  @team = Team.find(params[:id])
  @players = @team.players
end

end
