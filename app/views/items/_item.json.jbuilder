json.extract! item, :id, :name, :description, :release_date, :epic, :status, :owner, :designer, :developer, :tech_lead, :qa, :background, :objective, :assumptions, :success, :user_stories, :use_cases, :requirements, :milestones, :questions, :scope, :why, :supporting_data, :inspiration, :dependencies, :risks, :created_at, :updated_at
json.url item_url(item, format: :json)
