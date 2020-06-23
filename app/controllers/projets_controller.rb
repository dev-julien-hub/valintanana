class ProjetsController < ApplicationController
  include ProjetsHelper
  def index
  end

  def new
  end

  def create
  end

  def show
    @details = self._GetIdFromProjets(params[:id])

    print @details

  end

  def edit
  end

  def update
  end

  def delete
  end
end
