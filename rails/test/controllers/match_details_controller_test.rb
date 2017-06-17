require 'test_helper'

class MatchDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match_detail = match_details(:one)
  end

  test "should get index" do
    get match_details_url
    assert_response :success
  end

  test "should get new" do
    get new_match_detail_url
    assert_response :success
  end

  test "should create match_detail" do
    assert_difference('MatchDetail.count') do
      post match_details_url, params: { match_detail: {  } }
    end

    assert_redirected_to match_detail_url(MatchDetail.last)
  end

  test "should show match_detail" do
    get match_detail_url(@match_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_match_detail_url(@match_detail)
    assert_response :success
  end

  test "should update match_detail" do
    patch match_detail_url(@match_detail), params: { match_detail: {  } }
    assert_redirected_to match_detail_url(@match_detail)
  end

  test "should destroy match_detail" do
    assert_difference('MatchDetail.count', -1) do
      delete match_detail_url(@match_detail)
    end

    assert_redirected_to match_details_url
  end
end
