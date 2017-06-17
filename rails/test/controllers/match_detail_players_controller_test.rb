require 'test_helper'

class MatchDetailPlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match_detail_player = match_detail_players(:one)
  end

  test "should get index" do
    get match_detail_players_url
    assert_response :success
  end

  test "should get new" do
    get new_match_detail_player_url
    assert_response :success
  end

  test "should create match_detail_player" do
    assert_difference('MatchDetailPlayer.count') do
      post match_detail_players_url, params: { match_detail_player: {  } }
    end

    assert_redirected_to match_detail_player_url(MatchDetailPlayer.last)
  end

  test "should show match_detail_player" do
    get match_detail_player_url(@match_detail_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_match_detail_player_url(@match_detail_player)
    assert_response :success
  end

  test "should update match_detail_player" do
    patch match_detail_player_url(@match_detail_player), params: { match_detail_player: {  } }
    assert_redirected_to match_detail_player_url(@match_detail_player)
  end

  test "should destroy match_detail_player" do
    assert_difference('MatchDetailPlayer.count', -1) do
      delete match_detail_player_url(@match_detail_player)
    end

    assert_redirected_to match_detail_players_url
  end
end
