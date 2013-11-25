json.array!(@ideas) do |idea|
  json.extract! idea, :title, :idea
  json.url idea_url(idea, format: :json)
end
