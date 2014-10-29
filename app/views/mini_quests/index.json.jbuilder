json.array!(@mini_quests) do |mini_quest|
  json.extract! mini_quest, :id, :title, :description, :completed_text, :status
  json.url mini_quest_url(mini_quest, format: :json)
end
