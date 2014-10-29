class RandomQuestionsController < ApplicationController
  before_action :set_random_question, only: [:show, :edit, :update, :destroy]
  before_filter :logged_in?, only: [:edit, :update, :destroy]

  # GET /random_questions
  # GET /random_questions.json
  def index
    @random_questions = RandomQuestion.all
  end

  # GET /random_questions/1
  # GET /random_questions/1.json
  def show
  end

  # GET /random_questions/new
  def new
    @random_question = RandomQuestion.new
  end

  # GET /random_questions/1/edit
  def edit
  end

  # POST /random_questions
  # POST /random_questions.json
  def create
    @random_question = RandomQuestion.new(random_question_params)

    respond_to do |format|
      if @random_question.save
        format.html { redirect_to @random_question, notice: 'Random question was successfully created.' }
        format.json { render :show, status: :created, location: @random_question }
      else
        format.html { render :new }
        format.json { render json: @random_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /random_questions/1
  # PATCH/PUT /random_questions/1.json
  def update
    respond_to do |format|
      if @random_question.update(random_question_params)
        format.html { redirect_to @random_question, notice: 'Random question was successfully updated.' }
        format.json { render :show, status: :ok, location: @random_question }
      else
        format.html { render :edit }
        format.json { render json: @random_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /random_questions/1
  # DELETE /random_questions/1.json
  def destroy
    @random_question.destroy
    respond_to do |format|
      format.html { redirect_to random_questions_url, notice: 'Random question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_random_question
      @random_question = RandomQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def random_question_params
      params.require(:random_question).permit(:question, :answer_1, :answer_2, :answer_3, :answer_4, :correct_answer)
    end
end
