class BankLog < ApplicationRecord
    
    belongs_to :bank
    
    belongs_to :bank_category
end
