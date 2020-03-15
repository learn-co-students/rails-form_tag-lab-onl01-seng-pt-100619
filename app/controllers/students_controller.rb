class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end

  #the new action is not required as a method in the student controller
  #the new view is rendered without the need of a method in the student controller
  #the '/student/new' action on the new student form uses the create action

end
