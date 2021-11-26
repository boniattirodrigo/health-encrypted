class Patient < ApplicationRecord
  encrypts :name, :birth_date, :created_at, :updated_at
  encrypts :email, deterministic: true, downcase: true

  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true, email: true
  validates :birth_date, presence: true, format: {
    with: /\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])/, message: 'not a valid date format'
  }, length: { is: 10 }

  has_one :health_status, dependent: :destroy, class_name: 'PatientHealthStatus'
end
