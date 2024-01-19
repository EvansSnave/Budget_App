class EntitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group

  def index
    @entities = @group.entities.order(created_at: :desc)
    @total_amount = @entities.sum(:amount)
  end

  def new
    @entity = Entity.new
  end

  def create
    @entity = @group.entities.build(entity_params)
    # @entity.author = current_user

    if @entity.save
      redirect_to group_entities_path(@group), notice: 'Transaction added successfully!'
    else
      render :new
    end
  end

  private

  def set_group
    @group = current_user.groups.find(params[:group_id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'Not authorized to view this category.'
  end

  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
