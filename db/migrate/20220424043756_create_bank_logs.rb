class CreateBankLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :bank_logs do |t|
      t.string :title
      t.integer :bank_category_id
      t.date :use_date
      t.string :detail
      t.integer :amount_money
      t.boolean :in_out

      t.timestamps
    end
  end
end
