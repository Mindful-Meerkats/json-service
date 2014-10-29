require 'test_helper'

class MiniQuestsControllerTest < ActionController::TestCase
  setup do
    @mini_quest = mini_quests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mini_quests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mini_quest" do
    assert_difference('MiniQuest.count') do
      post :create, mini_quest: { completed_text: @mini_quest.completed_text, description: @mini_quest.description, status: @mini_quest.status, title: @mini_quest.title }
    end

    assert_redirected_to mini_quest_path(assigns(:mini_quest))
  end

  test "should show mini_quest" do
    get :show, id: @mini_quest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mini_quest
    assert_response :success
  end

  test "should update mini_quest" do
    patch :update, id: @mini_quest, mini_quest: { completed_text: @mini_quest.completed_text, description: @mini_quest.description, status: @mini_quest.status, title: @mini_quest.title }
    assert_redirected_to mini_quest_path(assigns(:mini_quest))
  end

  test "should destroy mini_quest" do
    assert_difference('MiniQuest.count', -1) do
      delete :destroy, id: @mini_quest
    end

    assert_redirected_to mini_quests_path
  end
end
