Rails.application.routes.draw do
  mount_devise_token_auth_for "Account", at: "api/v1/auth"
end
