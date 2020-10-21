class LcRunsController < ApplicationController
  before_action :set_mycelium
  before_action :set_lc_run, only: [:show, :edit, :update, :destroy]

  # GET mycelia/1/lc_runs
  def index
    @lc_runs = @mycelium.lc_runs
  end

  # GET mycelia/1/lc_runs/1
  def show
  end

  # GET mycelia/1/lc_runs/new
  def new
    @lc_run = @mycelium.lc_runs.build
  end

  # GET mycelia/1/lc_runs/1/edit
  def edit
  end

  # POST mycelia/1/lc_runs
  def create
    @lc_run = @mycelium.lc_runs.build(lc_run_params)

    if @lc_run.save
      redirect_to([@lc_run.mycelium, @lc_run], notice: 'Lc run was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT mycelia/1/lc_runs/1
  def update
    if @lc_run.update_attributes(lc_run_params)
      redirect_to([@lc_run.mycelium, @lc_run], notice: 'Lc run was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE mycelia/1/lc_runs/1
  def destroy
    @lc_run.destroy

    redirect_to mycelium_lc_runs_url(@mycelium)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycelium
      @mycelium = Mycelium.find(params[:mycelium_id])
    end

    def set_lc_run
      @lc_run = @mycelium.lc_runs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lc_run_params
      params.require(:lc_run).permit(:strain, :description, :inoculated, :inoculated_at, :run_started, :run_started_at, :fully_colonised, :fully_colonised_at, :logbook, :recipe, :mycelium_id)
    end
end
