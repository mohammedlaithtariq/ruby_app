json.array! (@companies)do |company|
json.partial! 'company', company: company
json.employees do
json.array! (company.employees)do |employee|
json.partial! 'employees/employee', employee: employee
json.clients do
json.array! (employee.clients)do |client|
json.partial! 'clients/client', client: client

end
end
end
end
end
