class MiniQuestsController < ApplicationController
  before_action :set_mini_quest, only: [:show, :edit, :update, :destroy]

  # GET /mini_quests
  # GET /mini_quests.json
  def index
    @mini_quests = MiniQuest.all
  end

  # GET /mini_quests/1
  # GET /mini_quests/1.json
  def show
  end

  # GET /mini_quests/new
  def new
    @mini_quest = MiniQuest.new
  end

  # GET /mini_quests/1/edit
  def edit
  end

  # POST /mini_quests
  # POST /mini_quests.json
  def create
    @mini_quest = MiniQuest.new(mini_quest_params)

    respond_to do |format|
      if @mini_quest.save
        format.html { redirect_to @mini_quest, notice: 'Mini quest was successfully created.' }
        format.json { render :show, status: :created, location: @mini_quest }
      else
        format.html { render :new }
        format.json { render json: @mini_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mini_quests/1
  # PATCH/PUT /mini_quests/1.json
  def update
    respond_to do |format|
      if @mini_quest.update(mini_quest_params)
        format.html { redirect_to @mini_quest, notice: 'Mini quest was successfully updated.' }
        format.json { render :show, status: :ok, location: @mini_quest }
      else
        format.html { render :edit }
        format.json { render json: @mini_quest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mini_quests/1
  # DELETE /mini_quests/1.json
  def destroy
    @mini_quest.destroy
    respond_to do |format|
      format.html { redirect_to mini_quests_url, notice: 'Mini quest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mini_quest
      @mini_quest = MiniQuest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mini_quest_params
      params.require(:mini_quest).permit(:title, :description, :completed_text, :status)
    end
end
