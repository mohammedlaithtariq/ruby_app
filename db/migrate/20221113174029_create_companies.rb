class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name ,  index:true , null:false
      t.string :address , index:true , null:false
      t.string :industry,  index:true , null:false
      t.string :date ,  index:true , null:false
      t.timestamps
    end
  end
end
