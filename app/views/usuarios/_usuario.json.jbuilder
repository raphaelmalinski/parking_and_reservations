json.extract! usuario, :id, :username, :email, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
