require "application_system_test_case"

class OutflowtypesTest < ApplicationSystemTestCase
  setup do
    @outflowtype = outflowtypes(:one)
  end

  test "visiting the index" do
    visit outflowtypes_url
    assert_selector "h1", text: "Outflowtypes"
  end

  test "creating a Outflowtype" do
    visit outflowtypes_url
    click_on "New Outflowtype"

    fill_in "Description", with: @outflowtype.description
    fill_in "Name", with: @outflowtype.name
    check "System item" if @outflowtype.system_item
    click_on "Create Outflowtype"

    assert_text "Outflowtype was successfully created"
    click_on "Back"
  end

  test "updating a Outflowtype" do
    visit outflowtypes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @outflowtype.description
    fill_in "Name", with: @outflowtype.name
    check "System item" if @outflowtype.system_item
    click_on "Update Outflowtype"

    assert_text "Outflowtype was successfully updated"
    click_on "Back"
  end

  test "destroying a Outflowtype" do
    visit outflowtypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Outflowtype was successfully destroyed"
  end
end
