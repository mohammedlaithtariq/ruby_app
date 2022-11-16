
json.extract! company , :id , :name, :address, :industry, :date
json.employee do 
  json.employee_id company.employee.id
  json.name company.employee.name
  json.address company.employee.address
  json.age company.employee.age
  json.job_position company.employee.job_position
  json.phone company.employee.phone
  json.hobbies company.employee.hobbies
  json.date company.employee.date
  json.created_at company.employee.created_at
  json.clients do
    json.employee_id company.employee.client.id
    json.name company.employee.client.name
    json.address company.employee.client.address
    json.phone company.employee.client.phone
    json.barcode company.employee.client.barcode
    json.created_at company.employee.client.created_at
    end
end
