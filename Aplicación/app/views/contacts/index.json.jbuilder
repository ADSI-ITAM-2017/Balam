json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :tel, :mail, :message
  json.url contact_url(contact, format: :json)
end
