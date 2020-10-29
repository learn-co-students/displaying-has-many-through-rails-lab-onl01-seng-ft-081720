class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
  # can't directly say has_many doctors, because there is no doc_id in patient, so go through the appointments table
end
