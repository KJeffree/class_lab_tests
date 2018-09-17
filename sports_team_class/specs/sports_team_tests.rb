require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

  def setup

@players= ["Paul", "John", "Emma", "Sean", "Jenny"]

  end

  def test_team_name
    team =Team.new("Bubbles", @players, "Jeffrey")
    assert_equal("Bubbles", team.team_name)
  end

  def test_players
    team =Team.new("Bubbles", @players, "Jeffrey")
    assert_equal(@players, team.players)
  end

  def test_coach
  team =Team.new("Bubbles", @players, "Jeffrey")
  assert_equal("Jeffrey", team.coach)
  end

  def test_add_player
    team = Team.new("Bubbles", @players, "Jeffrey")
    team.add_player("Rosie")
    assert_equal(6, team.players.length)
  end

  def test_find_player__found
    team = Team.new("Bubbles", @players, "Jeffrey")
    name_found = team.find_player("Emma")
    assert_equal("Emma", name_found)
  end

  def test_find_player__not_found
    team = Team.new("Bubbles", @players, "Jeffrey")
    name_found = team.find_player("Craig")
    assert_nil(name_found)
  end

  def test_points
    team = Team.new("Bubbles", @players, "Jeffrey")
    assert_equal(0, team.points)
  end

  def test_update_points__win
    team = Team.new("Bubbles", @players, "Jeffrey")
    team.update_points("win")
    assert_equal(1, team.points)
  end

  def test_update_points__lose
    team = Team.new("Bubbles", @players, "Jeffrey")
    team.update_points("lose")
    assert_equal(0, team.points)
  end

end
