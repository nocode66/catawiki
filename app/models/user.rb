class User < ApplicationRecord

  enum role: [:guest, :user, :admin]  
  
  after_initialize :set_default_role, :if => :new_record?
  
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, presence: true
  validates :first_name, presence: true, length: { maximum: 128,
    too_long: "%{count} characters is the maximum allowed" }
  validates :last_name, presence: true, length: { maximum: 128,
    too_long: "%{count} characters is the maximum allowed" }

  def set_default_role
    self.role ||= :guest
  end

 # Assign an API key on create
  before_create do |user|
    user.api_key = user.generate_api_key
  end

  # Generate a unique API key
  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless User.exists?(api_key: token)
    end
  end


end
