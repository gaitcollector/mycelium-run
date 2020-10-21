class SpawnRunsController < ApplicationController
  before_action :set_mycelium
  before_action :set_spawn_run, only: [:show, :edit, :update, :destroy]

  # GET mycelia/1/spawn_runs
  def index
    @spawn_runs = @mycelium.spawn_runs
  end

  # GET mycelia/1/spawn_runs/1
  def show
  end

  # GET mycelia/1/spawn_runs/new
  def new
    @spawn_run = @mycelium.spawn_runs.build
  end

  # GET mycelia/1/spawn_runs/1/edit
  def edit
  end

  # POST mycelia/1/spawn_runs
  def create
    @spawn_run = @mycelium.spawn_runs.build(spawn_run_params)

    if @spawn_run.save
      redirect_to([@spawn_run.mycelium, @spawn_run], notice: 'Spawn run was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT mycelia/1/spawn_runs/1
  def update
    if @spawn_run.update_attributes(spawn_run_params)
      redirect_to([@spawn_run.mycelium, @spawn_run], notice: 'Spawn run was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE mycelia/1/spawn_runs/1
  def destroy
    @spawn_run.destroy

    redirect_to mycelium_spawn_runs_url(@mycelium)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycelium
      @mycelium = Mycelium.find(params[:mycelium_id])
    end

    def set_spawn_run
      @spawn_run = @mycelium.spawn_runs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spawn_run_params
      params.require(:spawn_run).permit(:strain, :description, :inoculated, :inoculated_at, :run_started, :run_started_at, :fully_colonised, :fully_colonised_at, :logbook, :recipe, :mycelium_id)
    end
end
