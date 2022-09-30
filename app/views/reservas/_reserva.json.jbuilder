json.extract! reserva, :id, :data_entrada, :data_saida, :hora_entrada, :hora_saida, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
