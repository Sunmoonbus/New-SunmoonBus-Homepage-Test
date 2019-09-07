Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'main#index' #메인 홈

  get '/timetable/' => 'timetable#index' #시간표

  get '/freeboard/' => 'freeboard#index' #자유게시판
  post '/freeboard/create' => 'freeboard#create'
  get '/freeboard/new' => 'freeboard#new' 
  get '/freeboard/edit/:post_id' => 'freeboard#edit'
  post '/freeboard/update/:post_id' => 'freeboard#update'
  post '/freeboard/destroy/:post_id' => 'freeboard#destroy'

  get '/suggestions/' => 'suggestions#index' #건의사항
  post '/suggestions/create' => 'suggestions#create'
  get '/suggestions/new' => 'suggestions#new' 
  get '/suggestions/edit/:post_id' => 'suggestions#edit'
  post '/suggestions/update/:post_id' => 'suggestions#update'
  post '/suggestions/destroy/:post_id' => 'suggestions#destroy'
end
