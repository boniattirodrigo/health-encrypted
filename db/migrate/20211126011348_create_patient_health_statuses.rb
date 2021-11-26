class CreatePatientHealthStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_health_statuses, id: :uuid do |t|
      t.string :description, null: false
      t.text :details, null: false
      t.references :patient, index: true, foreign_key: true, null: false, type: :uuid
      t.string :created_at, null: false
      t.string :updated_at, null: false
    end
  end
end
