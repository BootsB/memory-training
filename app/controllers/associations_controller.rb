class AssociationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_association, only: [:edit, :update]

  def index
    @cards = Card.all
    @associations = current_user.associations
  end

  def new
    @association = Association.new
    @cards = Card.all
  end

  def create
    @association = Association.new(association_params)
    @association.user = current_user

    if @association.save
      redirect_to new_association_path, notice: 'Association was successfully created.'
    else
      @cards = Card.all
      render :new
    end
  end

  def edit
  end

  def update
    if @association.update(association_params)
      redirect_to associations_path, notice: 'Association was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_association
    @association = if params[:id]
      Association.find(params[:id])
    else
      Card.find(params[:card_id]).associations.build(user: current_user)
    end
  end

  def association_params
    params.require(:association).permit(:card_id, :person, :object, :action)
  end
end
