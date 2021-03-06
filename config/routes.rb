TechReviewSite::Application.routes.draw do

  devise_for :users
  resources :users, only: :show
  resources :products, only: :show do
    resources :reviews, only: [:new, :create]
    collection do #7つのアクション以外を使うときにcollection do〜endとする。
      get 'search'
    end
  end
  root 'products#index'


end
