class PetriRuns::LogEntriesController < LogEntriesController
  before_action :set_loggable

  private
    def set_loggable
      @petri_run = @mycelium.petri_runs.find(params[:id])
      @loggable = @petri_run.find(params[:id])
    end
end
