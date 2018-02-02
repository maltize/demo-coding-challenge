class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  # GET /teams.json
  def index
    @teams = current_user.teams.all
    @monsters = {}
    @teams.each do |team|
      monster1 = current_user.monsters.find(team.monster_1_id)
      monster2 = current_user.monsters.find(team.monster_2_id)
      monster3 = current_user.monsters.find(team.monster_3_id)
      @monsters[team.id] = [monster1, monster2, monster3]
    end
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @monster1 = current_user.monsters.find(@team.monster_1_id)
    @monster2 = current_user.monsters.find(@team.monster_2_id)
    @monster3 = current_user.monsters.find(@team.monster_3_id)
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = Team.new(team_params)
    @team.user_id = current_user.id

    respond_to do |format|
      if @team.save
        format.html { redirect_to @team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = current_user.teams.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:monster_1_id, :monster_2_id, :monster_3_id, :user_id)
    end
end
