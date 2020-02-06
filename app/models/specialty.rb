class Specialty < ApplicationRecord
  has_many :healthmeetings
  has_many :doctors, through: :healthmeetings
end
