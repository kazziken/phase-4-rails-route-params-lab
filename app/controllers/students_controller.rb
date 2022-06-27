class StudentsController < ApplicationController

  def index
    if params[:name]
      specific_students = Student.where(first_name: params[:name].capitalize).or  (Student.where(last_name: params[:name].capitalize))
      render json: specific_students
    else
      students = Student.all
      render json: students
    end
  end

  def show
    students = Student.find(params[:id])
    render json: students
  end


end
