class StudentsController < ApplicationController

  def index
    students = Student.all
    # name = params[:name] ? params[:name].downcase
     if params[:name] 
      name = params[:name].capitalize
    
      student = Student.where(first_name: name).or(Student.where(last_name: name))
      render json: student
     else

    # byebug
    render json: students
     end
  end

  def show
    student = Student.find params[:id]
    render json: student
  end

  # def search
  #   byebug
  # end

end
