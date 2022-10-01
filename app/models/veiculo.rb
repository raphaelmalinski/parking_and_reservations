class Veiculo < ApplicationRecord
    belongs_to :usuario
    has_many :reservas
end
