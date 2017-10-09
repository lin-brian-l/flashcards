class User < ApplicationRecord
  has_many :rounds

  validates :username, :email, { presence: true,
                                 uniqueness: true }
  has_secure_password
  validates :password, { presence: true }

end
