require "application_system_test_case"

class ClassisTest < ApplicationSystemTestCase
  setup do
    @classi = classis(:one)
  end

  test "visiting the index" do
    visit classis_url
    assert_selector "h1", text: "Classis"
  end

  test "creating a Classi" do
    visit classis_url
    click_on "New Classi"

    fill_in "Nome", with: @classi.nome
    click_on "Create Classi"

    assert_text "Classi was successfully created"
    click_on "Back"
  end

  test "updating a Classi" do
    visit classis_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @classi.nome
    click_on "Update Classi"

    assert_text "Classi was successfully updated"
    click_on "Back"
  end

  test "destroying a Classi" do
    visit classis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Classi was successfully destroyed"
  end
end
