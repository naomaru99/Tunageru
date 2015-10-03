class TopController < ApplicationController

  def index
    @students = Student.limit(5)
    @workers = Worker.limit(5)

  end


end
