class PagesController < ApplicationController
  # GET /:page

  def show
    render params[:page].to_s
  end
end
