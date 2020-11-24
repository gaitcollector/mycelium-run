Rails.application.routes.draw do

  resources :mycelia do
    resources :substrate_runs
    resources :spawn_runs
    resources :lc_runs do
      resources :log_entries, module: :lc_runs
    end
    resources :petri_runs do
      resources :log_entries, module: :petri_runs
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
