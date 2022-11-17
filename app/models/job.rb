class Job < ApplicationRecord
    belongs_to :user
   validates :company, presence: true, uniqueness: { scope: :user_id }
end
