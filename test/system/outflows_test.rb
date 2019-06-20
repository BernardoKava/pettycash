require "application_system_test_case"

class OutflowsTest < ApplicationSystemTestCase
  setup do
    @outflow = outflows(:one)
  end

  test "visiting the index" do
    visit outflows_url
    assert_selector "h1", text: "Outflows"
  end

  test "creating a Outflow" do
    visit outflows_url
    click_on "New Outflow"

    fill_in "Amount", with: @outflow.amount
    fill_in "Bankaccount", with: @outflow.bankaccount_id
    fill_in "Cashflow", with: @outflow.cashflow_id
    fill_in "Date posted", with: @outflow.date_posted
    fill_in "Details", with: @outflow.details
    check "Follow up" if @outflow.follow_up
    fill_in "Month", with: @outflow.month
    fill_in "Outflowtype", with: @outflow.outflowtype_id
    fill_in "Person", with: @outflow.person_id
    fill_in "Rationale", with: @outflow.rationale
    fill_in "Year", with: @outflow.year
    click_on "Create Outflow"

    assert_text "Outflow was successfully created"
    click_on "Back"
  end

  test "updating a Outflow" do
    visit outflows_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @outflow.amount
    fill_in "Bankaccount", with: @outflow.bankaccount_id
    fill_in "Cashflow", with: @outflow.cashflow_id
    fill_in "Date posted", with: @outflow.date_posted
    fill_in "Details", with: @outflow.details
    check "Follow up" if @outflow.follow_up
    fill_in "Month", with: @outflow.month
    fill_in "Outflowtype", with: @outflow.outflowtype_id
    fill_in "Person", with: @outflow.person_id
    fill_in "Rationale", with: @outflow.rationale
    fill_in "Year", with: @outflow.year
    click_on "Update Outflow"

    assert_text "Outflow was successfully updated"
    click_on "Back"
  end

  test "destroying a Outflow" do
    visit outflows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Outflow was successfully destroyed"
  end
end
