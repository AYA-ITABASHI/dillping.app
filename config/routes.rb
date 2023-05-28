Rails.application.routes.draw do
  namespace :public do
    get 'homes/top'
  end
  namespace :public do
   resources :members, only:[:index,:show,:update]
  end

  root to: 'public/homes#top'

  devise_for :members,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  devise_for :observers,skip: [:registrations, :passwords] ,controllers: {
  sessions: "observer/sessions"
}


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
