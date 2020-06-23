class HomeController < ApplicationController

  include HomeHelper

  def index

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
end
