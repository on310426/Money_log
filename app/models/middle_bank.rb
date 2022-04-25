class MiddleBank < ApplicationRecord
    
    belongs_to :bank
    
    belongs_to :bank_log
end
