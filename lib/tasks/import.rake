# -*- coding: UTF-8 -*-
require 'csv'

namespace :import do
 desc "Import leads from csv"

 task leads: :environment do
   filename = File.join Rails.root, "leads.csv"

   CSV.foreach(filename, headers: true) do |row|
       leads = Lead.create!(Company_contact_full_name: row["Company_contact_full_name"], Company_name: row["Company_name"],Company_contact_email: row["Company_contact_email"], Company_contact_phone_number: row["Company_contact_phone_number"],Building_project_name: row["Building_project_name"], Project_description: row["Project_description"], Message: row["Message"], File_attached: row["File_attached"], Date_of_contact_request: row["Date_of_contact_request"], Department: row["Department"])
   end

 end

 task customers: :environment do
   filename = File.join Rails.root, "Customers.csv"

   CSV.foreach(filename, headers: true) do |row|
        user = User.order("RAND()").first.id
        address = Address.order("RAND()").first.id
       customers = Customer.create!(user_id: user, address_id: address, Client_creation_Date: row["Client_creation_Date"], Company_name: row["Company_name"], Head_office_address: row["Head_office_address"], Company_contact_phone_number: row["Company_contact_phone_number"], Company_contact_email: row["Company_contact_email"], Company_description: row["Company_description"], Technical_service_contact_full_name: row["Technical_service_contact_full_name"], Technical_service_contact_phone_number: row["Technical_service_contact_phone_number"], Technical_service_contact_email: row["Technical_service_contact_email"])
   end

 end

 


 task addresses: :environment do
   filename = File.join Rails.root, "Address.csv"

   CSV.foreach(filename, headers: true, encoding: "ISO8859-1") do |row|
       address = Address.create!(Address_type: row["Address_type"], Status: row["Status"], Entity: row["Entity"], Number_street: row["Number_street"], Suite_or_apartment: row["Suite_or_apartment"], City: row["City"], Zip_or_postal_code: row["Zip_or_postal_code"], Country: row["Country"], Notes: row["Notes"])
   end

 end

 task users: :environment do
    filename = File.join Rails.root, "Users.csv"
 
    CSV.foreach(filename, headers: true) do |row|
        address = User.create!(email: row["email"], password: row["password"])
    end

  end

  task employees: :environment do
    filename = File.join Rails.root, "Employee.csv"
 
    CSV.foreach(filename, headers: true, encoding: "ISO8859-1") do |row|
        employee = Employee.create!(first_name: row["first_name"], last_name: row["last_name"], email: row["email"], title: row["title"])
    end
 
  end

  task building: :environment do
    filename = File.join Rails.root, "Buildings.csv"
    
    CSV.foreach(filename, headers: true, encoding: "ISO8859-1") do |row|
        customers = Customer.order("RAND()").first.id
        address = Address.order("RAND()").first.id
        building = Building.create!(customer_id: customers, address_id: address, Building_address: row["Building_address"], Admin_full_name: row["Admin_full_name"], Admin_phone_number: row["Admin_phone_number"], Admin_email: row["Admin_email"], Building_technical_contact_full_name: row["Building_technical_contact_full_name"], Building_technical_contact_phone_number: row["Building_technical_contact_phone_number"], Building_technical_contact_email: row["Building_technical_contact_email"])
    end
 
  end

  task battery: :environment do
    filename = File.join Rails.root, "Batteries.csv"
 
    CSV.foreach(filename, headers: true, encoding: "ISO8859-1") do |row|
        building = Building.order("RAND()").first.id
        employee = Employee.order("RAND()").first.id
        battery = Battery.create!(building_id: building, employee_id: employee, Type: row["Type"], Status: row["Status"], Activation_date: row["Activation_date"], Last_inspection_date: row["Last_inspection_date"], Operation_certificate: row["Operation_certificate"], Information: row["Operation_certificate"], Notes: row["Notes"])
    end
 
  end


  task buildingDetails: :environment do
    filename = File.join Rails.root, "Building_details.csv"
 
    CSV.foreach(filename, headers: true, encoding: "ISO8859-1") do |row|
        building = Building.order("RAND()").first.id
        buildingDetails = BuildingDetail.create!(building_id: building, Key: row["Key"], Value: row["Value"])
    end
 
  end

  task columns: :environment do
    filename = File.join Rails.root, "Columns.csv"
 
    CSV.foreach(filename, headers: true, encoding: "ISO8859-1") do |row|
        battery = Battery.order("RAND()").first.id
        column = Column.create!(battery_id: battery, Type: row["Type"], Number_of_level: row["Number_of_level"], Status: row["Status"], Notes: row["Notes"], Information: row["Information"])
    end
 
  end
  task elevator: :environment do
    filename = File.join Rails.root, "Elevators.csv"
 
    CSV.foreach(filename, headers: true, encoding: "ISO8859-1") do |row|
        column = Column.order("RAND()").first.id
        elevator = Elevator.create!(column_id: column, Serial_number: row["Serial_number"], Model: row["Model"], Type: row["Type"], Status: row["Status"], Activation_date: row["Activation_date"], Last_inspection_date: row["Last_inspection_date"], Inspection_certificate: row["Inspection_certificate"], Information: row["Information"], Notes: row["Notes"])
    end
 
  end

  task quote: :environment do
    filename = File.join Rails.root, "quotes.csv"
 
    CSV.foreach(filename, headers: true) do |row|
        quote = Quote.create!(Company_name: row["Company_name"], Contact_email: row["Contact_email"], Floors: row["Floors"], Appartment: row["Appartment"], Basement: row["Basement"], Elevators: row["Elevators"], Shops: row["Shops"], Parkings: row["Parkings"], Occupants: row["Occupants"], Companies: row["Companies"], Quality: row["Quality"], TotalPrice: row["TotalPrice"], quote_date: row["quote_date"])
    end

  end
end
