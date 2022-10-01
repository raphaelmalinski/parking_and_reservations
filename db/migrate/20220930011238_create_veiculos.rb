class CreateVeiculos < ActiveRecord::Migration[6.0]
  def change
    create_table :veiculos do |t|
      t.string :modelo
      t.string :marca
      t.integer :ano
      t.string :placa
      t.integer :usuario_id
      
      t.timestamps
    end
  end
end
