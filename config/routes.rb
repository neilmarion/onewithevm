Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "signout"}, controllers: {
    omniauth_callbacks: "users_omniauth/omniauth_callbacks",
    sessions: "users_omniauth/sessions"
  }

  authenticate do
    #root :to => 'channels#new'
  end
end
