class HighschoolsController < ApplicationController
  before_action :highschool, except: [:index, :new, :create]
  def index
    @highschool = Highschool.all
  end


  def new
    @highscool = Highschool.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def highschool_params
  end

  def highschool
    @highschool = Highschool.find(params[:id])
  end

end
