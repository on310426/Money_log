class User::BankLogsController < ApplicationController
  def index
  end
  
  def create
    @bank_log = BankLog.new(bank_log_params)
    if @bank_log.save
      redirect_to bank_log_path(@bank_log)
    else
      render :new
    end
  end

  def show
    @bank_log = BankLog.find(params[:id])
  end

  def new
    @bank_log = BankLog.new
  end

  def edit
    @bank_log = BankLog.find(params[:id])
  end
  
  def update
    @bank_log = BankLog.find(params[:id])
    if @bank_log.update(bank_log_params)
      redirect_to bank_log_path(@bank_log)
    else
      render :edit
    end
  end
  
  def destroy
    @bank_log = BankLog.find(params[:id])
    @bank = Bank.find(params[:id])
    @bank_log.destroy
    redirect_to users_mypage_path
  end
  
  private
  
  def bank_log_params
    params.require(:bank_log).permit(:title, :bank_category_id, :use_date, :detail, :amount_money, :in_out, :bank_id)
  end
end
