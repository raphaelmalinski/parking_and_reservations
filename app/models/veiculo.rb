class Veiculo < ApplicationRecord
    belongs_to :usuario
    has_many :reservas
    
    validates :modelo, presence: true, length: { maximum: 30 }
    validates :marca, presence: true, length: { maximum: 30 }
    validates :ano, presence: true, length: { maximum: 4 }
    validates :placa, presence: true, length: { maximum: 8 }
end
