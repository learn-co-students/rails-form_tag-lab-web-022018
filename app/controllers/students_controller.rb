class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to student_path @student.id
    #alternatively can do: redirect_to student
    #or : redirect_to student_path student
  end

  def to_s
    "#{@student.first_name} #{@student.last_name}"
  end
end
