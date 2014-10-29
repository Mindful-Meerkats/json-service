json.array!(@quiz_questions) do |quiz_question|
  json.extract! quiz_question, :id, :question, :answer_1, :answer_2, :answer_3, :answer_4, :correct_answer, :quiz_id
  json.url quiz_question_url(quiz_question, format: :json)
end
