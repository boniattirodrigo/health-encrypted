require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "should create Patient" do
    visit patients_url
    click_on "New Patient"

    fill_in "Birth date", with: @patient.birth_date
    fill_in "Email", with: @patient.email
    fill_in "Name", with: @patient.name
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "should update Patient" do
    visit patients_url
    click_on "Edit", match: :first

    fill_in "Birth date", with: @patient.birth_date
    fill_in "Email", with: @patient.email
    fill_in "Name", with: @patient.name
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "should destroy Patient" do
    visit patients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end
