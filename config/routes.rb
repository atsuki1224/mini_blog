Rails.application.routes.draw do
  devise_for :users
  root   'lyric#index'
  get    'lyrics'          => 'lyric#index'
  get    'lyrics/new'      => 'lyric#new'
  post   'lyrics'          => 'lyric#create'
  delete 'lyrics/:id'      => 'lyric#destroy'
  patch  'lyrics/:id'      => 'lyric#update'
  get    'lyrics/:id/edit' => 'lyric#edit'
  get    'users/:id'       => 'users#show'
  post   'lyrics/:id/edit' => 'lyric#index'
end
