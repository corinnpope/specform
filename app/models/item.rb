class Item < ApplicationRecord
  acts_as_tenant(:user)
  belongs_to :user
  has_one_attached :mockup
  has_rich_text :background
  has_rich_text :objective
  has_rich_text :assumptions
  has_rich_text :success
  has_rich_text :user_stories
  has_rich_text :use_cases
  has_rich_text :requirements
  has_rich_text :milestones
  has_rich_text :questions
  has_rich_text :scope
  has_rich_text :why
  has_rich_text :supporting_data
  has_rich_text :inspiration
  has_rich_text :dependencies
  has_rich_text :risks
end
