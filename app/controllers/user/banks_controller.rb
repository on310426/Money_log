class User::BanksController < ApplicationController
  
  def index
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    @banks = Bank.where(user_id: current_user.id)
    @bank_logs = BankLog.where(use_date: @month.all_month, user_id: current_user.id).order(use_date: "ASC")
  end

  def show
    @month = params[:month] ? Date.parse(params[:month]) : Time.zone.today
    @bank = Bank.find(params[:id])
    @bank_logs = @bank.bank_logs.where(use_date: @month.all_month, user_id: current_user.id).order(use_date: "ASC")
    @bank_logs.each do |bank_log|
      @total = 0
      if bank_log.in_out == true
        @total -= bank_log.amount_money
      else
        @total += bank_log.amount_money
      end
    end
  end
  
  def new
    @bank = Bank.new
  end
  
  def create
    @bank = Bank.new(bank_params)
    @bank.user_id = current_user.id
    if @bank.save
      redirect_to users_bank_path(@bank)
    else
      render :new
    end
  end

  def edit
    @bank = Bank.find(params[:id])
  end
  
  def update
    @bank = Bank.find(params[:id])
    if @bank.update(bank_params)
      redirect_to users_bank_path(@bank)
    else
      render :edit
    end
  end
  
  def destroy
    @bank = Bank.find(params[:id])
    @bank.destroy
    redirect_to users_mypage_path
  end
  
  private
  
  def bank_params
    params.require(:bank).permit(:name, :branch, :owner)
  end
  
end
