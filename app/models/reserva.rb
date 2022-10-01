class Reserva < ApplicationRecord
    belongs_to :usuario
    belongs_to :veiculo
end
