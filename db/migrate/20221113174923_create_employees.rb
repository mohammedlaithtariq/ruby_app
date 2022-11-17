class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :company_id , index:true , null:false
      t.string :name , index:true , null:false
      t.string :age  ,index:true , null:false
      t.string :job_position , index:true , null:false
      t.string :phone  , index:true , null:false
      t.string :address ,index:true , null:false
      t.string :hobbies ,index:true , null:false
      t.string :date ,index:true , null:false
      t.timestamps
    end
  end
end
