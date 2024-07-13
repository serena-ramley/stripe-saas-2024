class User < ApplicationRecord
    # Include default devise modules. Others available are:
    devise  :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable
            
    after_create do
        Stripe::Customer.create(email: email)
    end
end