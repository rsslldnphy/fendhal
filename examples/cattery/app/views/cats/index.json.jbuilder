json.array!(@cats) do |cat|
  json.extract! cat, :name, :paws, :breed
  json.url cat_url(cat, format: :json)
end