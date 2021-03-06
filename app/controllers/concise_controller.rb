class ConciseController < ApplicationController

  def show
    url = find_url
    redirect_to url.original_url
  end

  private

  def find_url
    Url.find_by(token: params[:id])
  end

end
