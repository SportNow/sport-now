json.array!(@events) do |event|
  json.extract! event, :id, :headline, :description, :lat, :lng, :address, :datetime, :type, :max_seats, :skill_min, :skill_max, :image_id, :sport_id, :user_id
  json.url event_url(event, format: :json)
end
