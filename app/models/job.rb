class Job < ApplicationRecord
    belongs_to :user
   validates :company, presence: true, uniqueness: { scope: :user_id }
     scope :by_id, ->(id) { where(user_id: id) }
end
