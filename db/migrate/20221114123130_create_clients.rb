class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.references :employee , foreign_key: :employee_id
      t.string :name
      t.string :phone
      t.string :address
      t.string :barcode
      t.timestamps
    end
  end
end
