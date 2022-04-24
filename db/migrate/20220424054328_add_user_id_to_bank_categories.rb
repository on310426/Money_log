class AddUserIdToBankCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :bank_categories, :user_id, :integer
  end
end
