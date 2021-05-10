class User < ApplicationRecord
    has_secure_password
    has_many :goals
    has_many :finance_items
    has_many :trips
    has_many :appointments
    has_many :list_items
end
