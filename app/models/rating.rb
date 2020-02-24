class Rating < ApplicationRecord
    belongs_to :property
    belongs_to :tenant

    validates :rating , presence: true
    valdates :comment, presence: true
    validates :tenant_id, presence: true
    validates :property_id, presence: true 
end
