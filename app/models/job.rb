class Job < ApplicationRecord
   validates :company, presence: true, uniqueness: { scope: :user_id }
  belongs_to :user
end
