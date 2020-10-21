Rails.application.routes.draw do
  resources :mycelia do
    resources :substrate_runs
  end
  resources :mycelia do
    resources :lc_runs
  end
  resources :mycelia do
    resources :spawn_runs
  end
  resources :mycelia do
    resources :petri_runs
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
