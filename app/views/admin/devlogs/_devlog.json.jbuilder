json.extract! devlog, :id, :title, :content, :created_at, :updated_at
json.url devlog_url(devlog, format: :json)
