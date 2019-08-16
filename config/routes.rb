Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'main#index' #메인 홈
  get '/timetable' => 'timetable#index' #시간표
  get '/freeboard' => 'freeboard#index' #자유게시판
  get '/suggestions' => 'suggestions#index' #건의사항
end
