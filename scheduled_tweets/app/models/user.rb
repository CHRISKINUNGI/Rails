#email:string
#password_digest:string
#
#password:string virtual
#password_configuration:string virtual
class User < ApplicationRecord
   has_secure_password
   validates :password, presence: true, confirmation: true, format: { with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\z/, message: "Password should match the specified format" }
   validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: " Must be a valid email address! " }
end

