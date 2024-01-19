class ProfileUserController < ApplicationController
  def show
    @user = current_user
  end
end
