Rails.application.routes.draw do
  
  root to: "user/homes#top"
  get '/about' => "user/homes#about"
    
  devise_for :users, skip: [:passwords,], controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }
  
    get 'users' => "user/users#top"
    get 'users/mypage' => "user/users#show"
    get 'users/mypage/edit' => "user/users#edit"
    patch 'users/update' => "user/users#update"
    
    get 'users/bank_categories' => "user/bank_categories#index"
    post 'users/bank_categories' => "user/bank_categories#create"
    get 'users/bank_categories/:id/edit' => "user/bank_categories#edit",as: "edit_users_bank_categories"
    patch 'users/bank_categories/:id' => "user/bank_categories#update", as: "update_users_bank_categories"
    delete 'users/bank_categories/:id' => "user/bank_categories#destroy", as: "destroy_users_bank_categories"
    
    get 'users/banks' =>"user/banks#index"
    get 'users/banks/new'=>"user/banks#new"
    get 'users/banks/:id'=>"user/banks#show", as: "users_bank"
    post 'users/banks'=>"user/banks#create"
    get 'users/banks/:id/edit'=>"user/banks#edit",as: "edit_bank"
    patch 'users/banks/:id'=>"user/banks#update"
    delete 'users/banks/:id'=>"user/banks#destroy"
    
    get 'users/bank_logs' => "user/bank_logs#index"
    get 'users/bank_logs/new' => "user/bank_logs#new"
    get 'users/bank_logs/:id' => "user/bank_logs#show"
    post 'users/bank_logs' => "user/bank_logs#create"
    get 'users/bank_logs/:id/edit' => "user/bank_logs#edit"
    patch 'users/bank_logs/:id' => "user/bank_logs#update"
    delete 'users/bank_logs/:id' => "user/bank_logs#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
