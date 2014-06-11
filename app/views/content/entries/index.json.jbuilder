json.array!(@content_entries) do |content_entry|
  json.extract! content_entry, :id, :title, :slug, :content
  json.url content_entry_url(content_entry, format: :json)
end
