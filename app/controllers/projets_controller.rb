class ProjetsController < ApplicationController
  include ProjetsHelper

  def index
    @project = self._GetAllProjets()
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end
end
