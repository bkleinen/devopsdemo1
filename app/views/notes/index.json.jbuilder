json.array!(@notes) do |note|
  json.extract! note, :title, :text
  json.url note_url(note, format: :json)
end
