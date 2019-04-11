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
end
