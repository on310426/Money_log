class CreateMiddleBanks < ActiveRecord::Migration[6.1]
  def change
    create_table :middle_banks do |t|
      t.integer :bank_id
      t.integer :bank_log_id

      t.timestamps
    end
  end
end
