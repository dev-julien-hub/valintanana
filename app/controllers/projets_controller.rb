class ProjetsController < ApplicationController
  include ProjetsHelper

  def index
    @projets = self._GetAllProjets()
  end

  def new
  end

  def create
  end

  def show
    @details = self._GetIdFromProjets(params[:id])

  end

  def edit
  end

  def update
  end

  def delete
  end
end