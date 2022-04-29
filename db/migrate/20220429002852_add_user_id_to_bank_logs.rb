class AddUserIdToBankLogs < ActiveRecord::Migration[6.1]
  def change
    add_column :bank_logs, :user_id, :integer
  end
end
