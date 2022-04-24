class User::BankCategoriesController < ApplicationController
  def index
    @categories = BankCategory.where(user_id: current_user.id)
    @category = BankCategory.new
  end
  
  def create
    @category = BankCategory.new(category_params)
    @category.user_id = current_user.id
    if @category.save
      redirect_to users_bank_categories_path
    else
      @categories = BankCategory.where(user_id: current_user.id)
      render :index
    end
  end

  def edit
    @category = BankCategory.find(params[:id])
  end
  
  def update
    @category = BankCategory.find(params[:id])
    if @category.update(category_params)
      redirect_to users_bank_categories_path
    else
      render :edit
    end
  end
  
  def destroy
    @category = BankCategory.find(params[:id])
    @category.destroy
    redirect_to users_bank_categories_path
  end
  
  private
  
  def category_params
    params.require(:bank_category).permit(:name)
  end
end
