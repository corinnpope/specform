class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.datetime :release_date
      t.string :epic
      t.string :status
      t.string :owner
      t.string :designer
      t.string :developer
      t.string :tech_lead
      t.string :qa
      t.text :background
      t.text :objective
      t.text :assumptions
      t.text :success
      t.text :user_stories
      t.text :use_cases
      t.text :requirements
      t.text :milestones
      t.text :questions
      t.text :scope
      t.text :why
      t.text :supporting_data
      t.text :inspiration
      t.text :dependencies
      t.text :risks

      t.timestamps
    end
  end
end
