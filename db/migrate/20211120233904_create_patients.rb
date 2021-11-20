class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients, id: :uuid do |t|
      t.string :name, null: false
      t.string :email, null: false, index: { unique: true }
      t.string :birth_date, null: false
      t.string :created_at, null: false
      t.string :updated_at, null: false
    end
  end
end
