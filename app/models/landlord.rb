class Landlord < ApplicationRecord
    has_many :properties
    has_many :tenants, through: :properties

    validates :name, presence: true
    validates :phone_number, presence: true, length: {minimum: 11}, uniqueness: true
    
end
