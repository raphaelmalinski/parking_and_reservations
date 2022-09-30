json.extract! veiculo, :id, :modelo, :marca, :ano, :placa, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)
