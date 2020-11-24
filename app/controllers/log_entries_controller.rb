class LogEntriesController < ApplicationController
  before_action :set_loggable, :set_mycelium




  def create
    @log_entry = @loggable.log_entries.new(log_entry_params)
    @log_entry.save
    redirect_to @loggable
  end
  # GET mycelia/1/lc_runs/new

  private

    def set_loggable
      @loggable = @mycelium.petri_runs.find(params[:id])
    end
    def set_mycelium
      @mycelium = Mycelium.find(params[:mycelium_id])
    end

    def log_entry_params
      params.require(:log_entry).permit(:content)
    end

end
