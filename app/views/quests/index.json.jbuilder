json.array!(@quests) do |quest|
  json.extract! quest, :id, :title, :description, :completed_text, :status
  json.url quest_url(quest, format: :json)
end
