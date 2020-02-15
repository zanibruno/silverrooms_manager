class Property < ApplicationRecord
    belongs_to :landlord 
    has_many :tenants
    has_many :ratings
    has_many :past_tenants, through: :ratings, source: :tenants

end
