Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #routes lists (index, new, show, create)
  resources :lists, only: [:create, :index, :show, :new] do

    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
