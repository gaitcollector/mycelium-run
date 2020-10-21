json.extract! mycelium_petri_run, :id, :strain, :description, :inoculated, :inoculated_at, :run_started, :run_started_at, :fully_colonised, :fully_colonised_at, :logbook, :recipe, :mycelium_id, :created_at, :updated_at
json.url mycelium_petri_run_url(mycelium_petri_run, format: :json)
