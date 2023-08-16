Rails.application.routes.draw do

  namespace :public do
    resources :events, only:[:new, :index, :create, :show] do
     resources :tasks, only:[:new, :show, :edit, :destroy, :update, :create]
    end
  end


  namespace :public do
    get 'members/unsubscribe' => 'members#unsubscribe'
    patch 'members/withdrawal' => 'members#withdrawal'
   resources :members, only:[:index,:show,:update, :edit]
  end

  namespace :public do
    resources :timelogs, only:[:new, :index, :create]
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
