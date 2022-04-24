Rails.application.routes.draw do
  
  root to: "user/homes#top"
  get '/about' => "user/homes#about"
    
  devise_for :users, skip: [:passwords,], controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
