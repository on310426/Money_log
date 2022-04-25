class Bank < ApplicationRecord
    
    belongs_to :user
    
    has_many :bank_logs
    
    has_many :middle_banks
end
