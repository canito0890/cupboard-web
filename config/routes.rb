Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  mount_devise_token_auth_for 'FamilyUser', at: 'family_auth'
  as :family_user do
    # Define routes for FamilyUser within this block.
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
