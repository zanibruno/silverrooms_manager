class Tenant < ApplicationRecord
    belongs_to :property
    has_many :ratings
    has_many :past_properties, through: :ratings, source: :property

    validates :name, presence: true
    validates :phone_number, presence: true, length:{minimum: 11}, uniqueness: true
    validates :email, uniqueness: true
    validate :start_date_cannot_be_in_the_past
    validate :end_date_cannot_be_before_start_date
    
    def start_date_cannot_be_in_the_past
        if start_date.present? && start_date < Date.today
            errors.add(:start_date, "cannot be in the past!")
        end 
    end

    def end_date_cannot_be_before_start_date
        if end_date.present? && end_date < start_date
            errors.add(:end_date, "must be after Start Date!")
        end
    end 


end
