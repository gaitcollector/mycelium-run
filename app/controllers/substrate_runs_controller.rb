class SubstrateRunsController < ApplicationController
  before_action :set_mycelium
  before_action :set_substrate_run, only: [:show, :edit, :update, :destroy]

  # GET mycelia/1/substrate_runs
  def index
    @substrate_runs = @mycelium.substrate_runs
  end

  # GET mycelia/1/substrate_runs/1
  def show
  end

  # GET mycelia/1/substrate_runs/new
  def new
    @substrate_run = @mycelium.substrate_runs.build
  end

  # GET mycelia/1/substrate_runs/1/edit
  def edit
  end

  # POST mycelia/1/substrate_runs
  def create
    @substrate_run = @mycelium.substrate_runs.build(substrate_run_params)

    if @substrate_run.save
      redirect_to([@substrate_run.mycelium, @substrate_run], notice: 'Substrate run was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT mycelia/1/substrate_runs/1
  def update
    if @substrate_run.update_attributes(substrate_run_params)
      redirect_to([@substrate_run.mycelium, @substrate_run], notice: 'Substrate run was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE mycelia/1/substrate_runs/1
  def destroy
    @substrate_run.destroy

    redirect_to mycelium_substrate_runs_url(@mycelium)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycelium
      @mycelium = Mycelium.find(params[:mycelium_id])
    end

    def set_substrate_run
      @substrate_run = @mycelium.substrate_runs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def substrate_run_params
      params.require(:substrate_run).permit(:strain, :description, :inoculated, :inoculated_at, :run_started, :run_started_at, :fully_colonised, :fully_colonised_at, :primodia_formed, :primodia_formed_at, :logbook, :recipe, :mycelium_id)
    end
end
