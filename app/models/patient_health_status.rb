class PatientHealthStatus < ApplicationRecord
  self.filter_attributes=[:description, :details]

  encrypts :created_at, :updated_at

  validates :description, :details, presence: true

  belongs_to :patient, dependent: :destroy
end
