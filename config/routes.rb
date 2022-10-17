Rails.application.routes.draw do
  get 'lists/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  #  .../lists/1 や .../lists/3に該当　(1,3 はidのこと)
  get 'lists/:id' => 'lists#show' , as: 'list'
  get 'lists/:id/edit' => 'lists#edit' , as: 'edit_list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'

end
