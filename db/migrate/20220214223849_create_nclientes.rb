class CreateNclientes < ActiveRecord::Migration[6.0]
  def change
    create_table :nclientes do |t|
      t.string :nome
      t.string :cpf

      t.timestamps
    end
  end
end
