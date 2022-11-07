class User < ApplicationRecord

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, length: {minimum: 3}, allow_blank: false
  validates :name, presence: true, uniqueness: { case_sensitive: false }

    has_one :job
  before_validation :genrate_id

  private

  def genrate_id

   self.agent_id =SecureRandom.hex(5)
  end

end
