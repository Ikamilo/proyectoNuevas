require "application_system_test_case"

class PizzasTest < ApplicationSystemTestCase
  setup do
    @pizza = pizzas(:one)
  end

  test "visiting the index" do
    visit pizzas_url
    assert_selector "h1", text: "Pizzas"
  end

  test "creating a Pizza" do
    visit pizzas_url
    click_on "New Pizza"

    fill_in "Flavor", with: @pizza.flavor_id
    fill_in "Sauce", with: @pizza.sauce_id
    fill_in "Shape", with: @pizza.shape_id
    fill_in "Size", with: @pizza.size_id
    fill_in "Total prices", with: @pizza.total_prices
    click_on "Create Pizza"

    assert_text "Pizza was successfully created"
    click_on "Back"
  end

  test "updating a Pizza" do
    visit pizzas_url
    click_on "Edit", match: :first

    fill_in "Flavor", with: @pizza.flavor_id
    fill_in "Sauce", with: @pizza.sauce_id
    fill_in "Shape", with: @pizza.shape_id
    fill_in "Size", with: @pizza.size_id
    fill_in "Total prices", with: @pizza.total_prices
    click_on "Update Pizza"

    assert_text "Pizza was successfully updated"
    click_on "Back"
  end

  test "destroying a Pizza" do
    visit pizzas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pizza was successfully destroyed"
  end
end
