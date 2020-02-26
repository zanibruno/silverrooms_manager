class Property < ApplicationRecord
    belongs_to :landlord
    has_many :tenants
    has_many :ratings
    has_many :past_tenants, through: :ratings, source: :tenants

    validates :address, presence: true
    validates :address, uniqueness: true 
    validates :single_rooms, presence: true
    validates :double_rooms, presence: true
    validates :bathrooms, presence: true


end
