module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected

  def check_user
    if current_user
      flash.clear
      # Redirect user
      redirect_to(rails_admin.dashboard_path) and return
    elsif current_artist
      flash.clear
      # Redirect artist
      # The authenticated root path can be defined in routes.rb
      redirect_to(authenticated_artist_root_path) and return
    end
  end
end
