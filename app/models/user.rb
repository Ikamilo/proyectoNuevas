class User < ApplicationRecord
    validates :name, format: { with: /\A[a-zA-Z]+\z/,
        message: "only allows letters" }
    validates :password, length: { minimum: 4 }
    validates :email, confirmation: true, uniqueness: true
    validates :email_confirmation, presence: true
end
