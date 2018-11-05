require 'pg'

namespace :export do
    desc "export to postgresql"
    task dwh: :environment do
        quotes = Quote.all
        conn = PG::Connection.open( host: "codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com", user: "jabir", password: "jabir123", dbname: "jabir")
        conn.exec("TRUNCATE #{"factquotes"} RESTART IDENTITY")
        quotes.each do |quotes|
            conn.exec("INSERT INTO \"factquotes\" (quoteid, creation_date, company_name, email, nbelevators) VALUES (#{quotes.id}, '#{quotes.quote_date}', '#{quotes.companyname}', '#{quotes.contactemail}', #{quotes.TotalElevators})")
       end
    end

    task dwh: :environment do
        leads = Lead.all
        conn = PG::Connection.open( host: "codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com", user: "jabir", password: "jabir123", dbname: "jabir")
        conn.exec("TRUNCATE #{"factcontact"} RESTART IDENTITY")
        leads.each do |leads|
            conn.exec("INSERT INTO \"factcontact\" (contactid, creation_date, company_name, email, project_name) VALUES (#{leads.id}, '#{leads.Date_of_contact_request}', '#{leads.Company_name}', '#{leads.Company_contact_email}', '#{leads.Building_project_name}')")
       end
    end

    task dwh: :environment do
        elevators = Elevator.all
        conn = PG::Connection.open( host: "codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com", user: "jabir", password: "jabir123", dbname: "jabir")
        conn.exec("TRUNCATE #{"factelevator"} RESTART IDENTITY")
        elevators.each do |elevators|
        conn.exec("INSERT INTO \"factelevator\" (elevatorid, serial_number, service_start_date, buildingid, customerid, building_city) VALUES (#{elevators.id}, '#{elevators.Serial_number}', '#{elevators.Activation_date}', #{elevators.column.battery.building_id}, #{elevators.column.battery.building.customer.id}, '#{elevators.column.battery.building.address.City}')")
       end
    end

    task dwh: :environment do
        conn = PG::Connection.open( host: "codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com", user: "jabir", password: "jabir123", dbname: "jabir")
        conn.exec("TRUNCATE #{"dimcustomers"} RESTART IDENTITY")
        Customer.find_each do |c|
            nbelevators = Elevator.joins(column: {battery: {building: :customer}}).where("customers.id = #{c.id}").count
            conn.exec("INSERT INTO \"dimcustomers\" (creation_date, company_name, company_contact_full_name, company_contact_email, nbelevators, building_city) VALUES ('#{c.Client_creation_Date}', '#{c.Company_name}', '#{c.Technical_service_contact_full_name}', '#{c.Company_contact_email}', #{nbelevators}, '#{c.address.City}')")
        end
    end
end


