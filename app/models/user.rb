class User < ApplicationRecord
  has_secure_password #pour utiliser Bcrypt
end
