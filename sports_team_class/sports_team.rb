class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(name)
    @players << name
  end

  def find_player(name)
    for player in @players
      if player == name
        return name
      end
    end
    return nil
  end

  def update_points(win_or_lose)
    if win_or_lose == "win"
      @points += 1
    end
  end
end
