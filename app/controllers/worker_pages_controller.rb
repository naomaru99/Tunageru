class WorkerPagesController < ApplicationController

   def show
    @worker = Worker.find(params[:id])
    end

  def edit
  end

  def update
  end


end
