FactoryBot.define do
  factory :project_member do
    teams_project { nil }
    user { nil }
  end
end
