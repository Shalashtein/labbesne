require "application_system_test_case"

class LifestylesTest < ApplicationSystemTestCase
  setup do
    @lifestyle = lifestyles(:one)
  end

  test "visiting the index" do
    visit lifestyles_url
    assert_selector "h1", text: "Lifestyles"
  end

  test "creating a Lifestyle" do
    visit lifestyles_url
    click_on "New Lifestyle"

    fill_in "Phsyical days", with: @lifestyle.phsyical_days
    fill_in "Physical", with: @lifestyle.physical_id
    check "Social" if @lifestyle.social
    fill_in "Social days", with: @lifestyle.social_days
    fill_in "Spree user", with: @lifestyle.spree_user_id
    check "Student" if @lifestyle.student
    fill_in "Student days", with: @lifestyle.student_days
    fill_in "Work", with: @lifestyle.work_id
    click_on "Create Lifestyle"

    assert_text "Lifestyle was successfully created"
    click_on "Back"
  end

  test "updating a Lifestyle" do
    visit lifestyles_url
    click_on "Edit", match: :first

    fill_in "Phsyical days", with: @lifestyle.phsyical_days
    fill_in "Physical", with: @lifestyle.physical_id
    check "Social" if @lifestyle.social
    fill_in "Social days", with: @lifestyle.social_days
    fill_in "Spree user", with: @lifestyle.spree_user_id
    check "Student" if @lifestyle.student
    fill_in "Student days", with: @lifestyle.student_days
    fill_in "Work", with: @lifestyle.work_id
    click_on "Update Lifestyle"

    assert_text "Lifestyle was successfully updated"
    click_on "Back"
  end

  test "destroying a Lifestyle" do
    visit lifestyles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lifestyle was successfully destroyed"
  end
end
