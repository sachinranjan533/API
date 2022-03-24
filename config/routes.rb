Rails.application.routes.draw do
  namespace :api do
    api_version module: 'v1', path: {
      value: 'v1'
    }, defaults: { format: :json } do
      resources :students, only: %i[index create update show]
      resources :courses, only: %i[index create update show]
    end
  end

end
