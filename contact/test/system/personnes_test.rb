require "application_system_test_case"

class PersonnesTest < ApplicationSystemTestCase
  setup do
    @personne = personnes(:one)
  end

  test "visiting the index" do
    visit personnes_url
    assert_selector "h1", text: "Personnes"
  end

  test "creating a Personne" do
    visit personnes_url
    click_on "New Personne"

    fill_in "Eamil", with: @personne.eamil
    fill_in "Nom", with: @personne.nom
    fill_in "Portable", with: @personne.portable
    fill_in "Prenom", with: @personne.prenom
    click_on "Create Personne"

    assert_text "Personne was successfully created"
    click_on "Back"
  end

  test "updating a Personne" do
    visit personnes_url
    click_on "Edit", match: :first

    fill_in "Eamil", with: @personne.eamil
    fill_in "Nom", with: @personne.nom
    fill_in "Portable", with: @personne.portable
    fill_in "Prenom", with: @personne.prenom
    click_on "Update Personne"

    assert_text "Personne was successfully updated"
    click_on "Back"
  end

  test "destroying a Personne" do
    visit personnes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personne was successfully destroyed"
  end
end
