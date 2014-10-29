json.array!(@random_questions) do |random_question|
  json.extract! random_question, :id, :question, :answer_1, :answer_2, :answer_3, :answer_4, :correct_answer, :status
  json.url random_question_url(random_question, format: :json)
end
