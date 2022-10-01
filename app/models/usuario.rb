class Usuario < ApplicationRecord
    has_many :reservas
    has_many :veiculos
    
    validates :username, presence: true, 
                         uniqueness: { case_sensitive: false },
                         length: { minimum: 3, maximum: 25 }
                        
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,
                      uniqueness: { case_sensitive: false },
                      length: { maximum: 105 },
                      format: { with: VALID_EMAIL_REGEX }
                          
    before_save { self.email = email.downcase }    
end
