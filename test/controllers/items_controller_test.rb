require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { assumptions: @item.assumptions, background: @item.background, dependencies: @item.dependencies, description: @item.description, designer: @item.designer, developer: @item.developer, epic: @item.epic, inspiration: @item.inspiration, milestones: @item.milestones, name: @item.name, objective: @item.objective, owner: @item.owner, qa: @item.qa, questions: @item.questions, release: @item.release_date, requirements: @item.requirements, risks: @item.risks, scope: @item.scope, status: @item.status, success: @item.success, supporting_data: @item.supporting_data, tech_lead: @item.tech_lead, use_cases: @item.use_cases, user_stories: @item.user_stories, why: @item.why } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { assumptions: @item.assumptions, background: @item.background, dependencies: @item.dependencies, description: @item.description, designer: @item.designer, developer: @item.developer, epic: @item.epic, inspiration: @item.inspiration, milestones: @item.milestones, name: @item.name, objective: @item.objective, owner: @item.owner, qa: @item.qa, questions: @item.questions, release: @item.release_date, requirements: @item.requirements, risks: @item.risks, scope: @item.scope, status: @item.status, success: @item.success, supporting_data: @item.supporting_data, tech_lead: @item.tech_lead, use_cases: @item.use_cases, user_stories: @item.user_stories, why: @item.why } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end
