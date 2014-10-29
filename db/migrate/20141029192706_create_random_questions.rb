class CreateRandomQuestions < ActiveRecord::Migration
  def change
    create_table :random_questions do |t|
      t.string :question
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.string :answer_4
      t.string :correct_answer
      t.string :status

      t.timestamps
    end
  end
end
