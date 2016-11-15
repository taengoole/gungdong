Rails.application.routes.draw do
  get 'home/index'
  post 'home/write'
  get 'home/list'
  get 'destroy/:post_id' => 'home#destroy'
  get 'update_view/:post_id' => 'home#update_view'
  post 'real_update/:post_id' => 'home#real_update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
