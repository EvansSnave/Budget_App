class StaticPageController < ApplicationController
  def splash_screen; end

  def show
    @user = current_user
  end
end
