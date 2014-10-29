require 'test_helper'

class RandomQuestionsControllerTest < ActionController::TestCase
  setup do
    @random_question = random_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:random_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create random_question" do
    assert_difference('RandomQuestion.count') do
      post :create, random_question: { answer_1: @random_question.answer_1, answer_2: @random_question.answer_2, answer_3: @random_question.answer_3, answer_4: @random_question.answer_4, correct_answer: @random_question.correct_answer, question: @random_question.question }
    end

    assert_redirected_to random_question_path(assigns(:random_question))
  end

  test "should show random_question" do
    get :show, id: @random_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @random_question
    assert_response :success
  end

  test "should update random_question" do
    patch :update, id: @random_question, random_question: { answer_1: @random_question.answer_1, answer_2: @random_question.answer_2, answer_3: @random_question.answer_3, answer_4: @random_question.answer_4, correct_answer: @random_question.correct_answer, question: @random_question.question }
    assert_redirected_to random_question_path(assigns(:random_question))
  end

  test "should destroy random_question" do
    assert_difference('RandomQuestion.count', -1) do
      delete :destroy, id: @random_question
    end

    assert_redirected_to random_questions_path
  end
end
