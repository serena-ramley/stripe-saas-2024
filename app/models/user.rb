class User < ApplicationRecord
    devise  :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
            
    after_create do
        Stripe::Customer.create(email: email)
    end
end