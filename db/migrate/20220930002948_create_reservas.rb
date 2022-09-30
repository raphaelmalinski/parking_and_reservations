class CreateReservas < ActiveRecord::Migration[6.0]
  def change
    create_table :reservas do |t|
      t.date :data_entrada
      t.date :data_saida
      t.time :hora_entrada
      t.time :hora_saida

      t.timestamps
    end
  end
end
