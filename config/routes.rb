Rails.application.routes.draw do
  mount_devise_token_auth_for "Account", at: "api/v1/auth"

  namespace :api do
    namespace :v1 do
      resources :shops, only: [:create]
    end
  end
end
