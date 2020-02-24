class Tenant < ApplicationRecord
    belongs_to :property
    has_many :ratings
    has_many :past_properties, through: :ratings, source: :property

    validates :name, presence: true
    validates :phone_number, presence: true, length:{minimum: 11}, uniqueness: true
    validates :email, uniqueness: true

end
