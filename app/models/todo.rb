class Todo < ApplicationRecord
    enum status: %w(新規 対応中 完了)
    
    belongs_to :user, optional: true
end
