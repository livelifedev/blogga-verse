Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"
  get "pages/about", to: "pages#about", as: "about"

  get "articles", to: "articles#index", as: "articles"
  get "articles/new", to: "articles#new", as: "new_article"
  post "articles", to: "articles#create"
  get "articles/:id", to: "articles#show", as: "article"
  get "articles/:id/edit", to: "articles#edit", as: "edit_article"
  put "articles/:id", to: "articles#update"
  patch "articles/:id", to: "articles#update"
  delete "articles/:id", to: "articles#destroy"

  get "users", to: "users#index", as: "users"
  get "signup", to: "users#new", as: "signup"
  post "users", to: "users#create"
  get "users/:id", to: "users#show", as: "user"
  get "users/:id/edit", to: "users#edit", as: "edit_user"
  put "users/:id", to: "users#update"
  patch "users/:id", to: "users#update"
  delete "users/:id", to: "users#destroy"
end
