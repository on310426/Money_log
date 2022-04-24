class CreateBanks < ActiveRecord::Migration[6.1]
  def change
    create_table :banks do |t|
      t.string :name
      t.string :branch
      t.string :owner
      t.integer :user_id
      t.integer :bank_log_id

      t.timestamps
    end
  end
end
