class PetriRunsController < ApplicationController
  before_action :set_mycelium
  before_action :set_petri_run, only: [:show, :edit, :update, :destroy]

  # GET mycelia/1/petri_runs
  def index
    @petri_runs = @mycelium.petri_runs
  end

  # GET mycelia/1/petri_runs/1
  def show
  end

  # GET mycelia/1/petri_runs/new
  def new
    @petri_run = @mycelium.petri_runs.build
  end

  # GET mycelia/1/petri_runs/1/edit
  def edit
  end

  # POST mycelia/1/petri_runs
  def create
    @petri_run = @mycelium.petri_runs.build(petri_run_params)

    if @petri_run.save
      redirect_to([@petri_run.mycelium, @petri_run], notice: 'Petri run was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT mycelia/1/petri_runs/1
  def update
    if @petri_run.update_attributes(petri_run_params)
      redirect_to([@petri_run.mycelium, @petri_run], notice: 'Petri run was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE mycelia/1/petri_runs/1
  def destroy
    @petri_run.destroy

    redirect_to mycelium_petri_runs_url(@mycelium)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycelium
      @mycelium = Mycelium.find(params[:mycelium_id])
    end

    def set_petri_run
      @petri_run = @mycelium.petri_runs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def petri_run_params
      params.require(:petri_run).permit(:strain, :description, :inoculated, :inoculated_at, :run_started, :run_started_at, :fully_colonised, :fully_colonised_at, :logbook, :recipe, :mycelium_id)
    end
end
