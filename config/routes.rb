Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'main#index'
  get '/weekday' => 'weekday#index'
  get '/weekend' => 'weekend#index'
end
