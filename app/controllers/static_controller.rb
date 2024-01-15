class StaticController < ApplicationController
  def home
    @user = User.create(name: 'Kevin')
  end
end
