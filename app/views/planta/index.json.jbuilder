json.array!(@planta) do |plantum|
  json.extract! plantum, :id, :name, :description, :picture
  json.url plantum_url(plantum, format: :json)
end
