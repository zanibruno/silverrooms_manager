class Rating < ApplicationRecord
    belongs_to :property
    belongs_to :tenant

    validates :rating , presence: true
    validates :comment, presence: true
    validates :tenant_id, presence: true
    validates :property_id, presence: true

    scope :good_rating, -> { where('rating > ?', 3)}


end
