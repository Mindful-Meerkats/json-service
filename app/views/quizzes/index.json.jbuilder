json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :title, :description, :status, :correct_answer, :answer_1, :answer_2, :answer_3, :answer_4, :status
  json.url quiz_url(quiz, format: :json)
end
