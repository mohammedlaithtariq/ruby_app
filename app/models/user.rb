class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable,
    #     :recoverable, :rememberable, :validatable

#   validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
#  validates :username, length: {minimum: 3}, allow_blank: false
#  validates :name, presence: true, uniqueness: { case_sensitive: false }
    validates :agent_id, presence: true
    has_many :job
  before_validation :genrate_id

  private

  def genrate_id

   self.agent_id =SecureRandom.hex(5)
  end

end
