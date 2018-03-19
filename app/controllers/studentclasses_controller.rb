class StudentClassesController < ApplicationController

  def index
    @studentclasses = StudentClass.all
  end

  def show
    @studentclass = StudentClass.find(params[:id])
  end

  def new
    @studentclass = StudentClass.new()
  end

  def create
    @studentclass = StudentClass.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@@studentclass)
  end

end
