class AddBankIdToBankLogs < ActiveRecord::Migration[6.1]
  def change
    add_column :bank_logs, :bank_id, :integer
  end
end
