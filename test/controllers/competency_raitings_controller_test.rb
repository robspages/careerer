require 'test_helper'

class CompetencyRaitingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competency_raiting = competency_raitings(:one)
  end

  test "should get index" do
    get competency_raitings_url
    assert_response :success
  end

  test "should get new" do
    get new_competency_raiting_url
    assert_response :success
  end

  test "should create competency_raiting" do
    assert_difference('CompetencyRaiting.count') do
      post competency_raitings_url, params: { competency_raiting: { competency_id: @competency_raiting.competency_id, description: @competency_raiting.description, name: @competency_raiting.name, rank: @competency_raiting.rank } }
    end

    assert_redirected_to competency_raiting_url(CompetencyRaiting.last)
  end

  test "should show competency_raiting" do
    get competency_raiting_url(@competency_raiting)
    assert_response :success
  end

  test "should get edit" do
    get edit_competency_raiting_url(@competency_raiting)
    assert_response :success
  end

  test "should update competency_raiting" do
    patch competency_raiting_url(@competency_raiting), params: { competency_raiting: { competency_id: @competency_raiting.competency_id, description: @competency_raiting.description, name: @competency_raiting.name, rank: @competency_raiting.rank } }
    assert_redirected_to competency_raiting_url(@competency_raiting)
  end

  test "should destroy competency_raiting" do
    assert_difference('CompetencyRaiting.count', -1) do
      delete competency_raiting_url(@competency_raiting)
    end

    assert_redirected_to competency_raitings_url
  end
end
