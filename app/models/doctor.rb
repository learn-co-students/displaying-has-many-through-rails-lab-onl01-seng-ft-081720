class Doctor < ApplicationRecord
    validates :name, presence: true 
    validates :department, presence: true

    has_many :appointments
    has_many :patients, through: :appointments 
end
