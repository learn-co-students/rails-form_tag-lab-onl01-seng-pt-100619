Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :create]
  get '/students/:id', to: 'students#show', as: 'student'
  post '/students/new', to: 'students#create'
end

#the create action does not render a view but it creates a student object 
#and it does it on the url '/students/new'
#the create action only executes the block of code in the student controller method
#the url/route helper new_student_path = '/student/new' and its used on the form that triggers the create action
#the url/route helper student_path(@students) = '/student/id:'  is used to redirect from the create action
