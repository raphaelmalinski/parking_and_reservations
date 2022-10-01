class Reserva < ApplicationRecord
    belongs_to :usuario
    has_one :veiculo
end
