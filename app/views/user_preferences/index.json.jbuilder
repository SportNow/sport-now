json.array!(@user_preferences) do |user_preference|
  json.extract! user_preference, :id, :skill_level, :notes, :user_id, :sport_id
  json.url user_preference_url(user_preference, format: :json)
end
