class HomeController < ApplicationController

  include HomeHelper

  def index
    end_date()
    @projets = self.JsonProjectsGet()

  end

  def edit
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def end_date()
    t = Time.now()
  end
end
