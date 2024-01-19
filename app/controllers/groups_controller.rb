# app/controllers/groups_controller.rb

class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = current_user.groups
  end

  def new
    @group = Group.new
    @available_icons = ['fas fa-car', 'fas fa-home', 'fas fa-bicycle', 'fas fa-bus', 'fas fa-shopping-cart',
                        'fas fa-utensils', 'fas fa-plane', 'fas fa-money-bill-wave', 'fas fa-hamburger',
                        'fas fa-university']
  end

  def create
    @group = current_user.groups.build(group_params)
    @available_icons = ['fas fa-car', 'fas fa-home', 'fas fa-bicycle', 'fas fa-bus', 'fas fa-shopping-cart',
                        'fas fa-utensils', 'fas fa-plane', 'fas fa-money-bill-wave', 'fas fa-hamburger',
                        'fas fa-university']

    if @group.save
      redirect_to root_path, notice: 'Category created successfully!'
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
