require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Assumptions", with: @item.assumptions
    fill_in "Background", with: @item.background
    fill_in "Dependencies", with: @item.dependencies
    fill_in "Description", with: @item.description
    fill_in "Designer", with: @item.designer
    fill_in "Developer", with: @item.developer
    fill_in "Epic", with: @item.epic
    fill_in "Inspiration", with: @item.inspiration
    fill_in "Milestones", with: @item.milestones
    fill_in "Name", with: @item.name
    fill_in "Objective", with: @item.objective
    fill_in "Owner", with: @item.owner
    fill_in "Qa", with: @item.qa
    fill_in "Questions", with: @item.questions
    fill_in "Release", with: @item.release_date
    fill_in "Requirements", with: @item.requirements
    fill_in "Risks", with: @item.risks
    fill_in "Scope", with: @item.scope
    fill_in "Status", with: @item.status
    fill_in "Success", with: @item.success
    fill_in "Supporting data", with: @item.supporting_data
    fill_in "Tech lead", with: @item.tech_lead
    fill_in "Use cases", with: @item.use_cases
    fill_in "User stories", with: @item.user_stories
    fill_in "Why", with: @item.why
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Assumptions", with: @item.assumptions
    fill_in "Background", with: @item.background
    fill_in "Dependencies", with: @item.dependencies
    fill_in "Description", with: @item.description
    fill_in "Designer", with: @item.designer
    fill_in "Developer", with: @item.developer
    fill_in "Epic", with: @item.epic
    fill_in "Inspiration", with: @item.inspiration
    fill_in "Milestones", with: @item.milestones
    fill_in "Name", with: @item.name
    fill_in "Objective", with: @item.objective
    fill_in "Owner", with: @item.owner
    fill_in "Qa", with: @item.qa
    fill_in "Questions", with: @item.questions
    fill_in "Release", with: @item.release_date
    fill_in "Requirements", with: @item.requirements
    fill_in "Risks", with: @item.risks
    fill_in "Scope", with: @item.scope
    fill_in "Status", with: @item.status
    fill_in "Success", with: @item.success
    fill_in "Supporting data", with: @item.supporting_data
    fill_in "Tech lead", with: @item.tech_lead
    fill_in "Use cases", with: @item.use_cases
    fill_in "User stories", with: @item.user_stories
    fill_in "Why", with: @item.why
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
