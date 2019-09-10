require "application_system_test_case"

class AditionsTest < ApplicationSystemTestCase
  setup do
    @adition = aditions(:one)
  end

  test "visiting the index" do
    visit aditions_url
    assert_selector "h1", text: "Aditions"
  end

  test "creating a Adition" do
    visit aditions_url
    click_on "New Adition"

    fill_in "Ingredient", with: @adition.ingredient_id
    fill_in "Pizza", with: @adition.pizza_id
    click_on "Create Adition"

    assert_text "Adition was successfully created"
    click_on "Back"
  end

  test "updating a Adition" do
    visit aditions_url
    click_on "Edit", match: :first

    fill_in "Ingredient", with: @adition.ingredient_id
    fill_in "Pizza", with: @adition.pizza_id
    click_on "Update Adition"

    assert_text "Adition was successfully updated"
    click_on "Back"
  end

  test "destroying a Adition" do
    visit aditions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adition was successfully destroyed"
  end
end
