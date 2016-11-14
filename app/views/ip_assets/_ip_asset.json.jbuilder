json.extract! ip_asset, :id, :title, :abstract, :ip_asset_file, :created_at, :updated_at
json.url ip_asset_url(ip_asset, format: :json)