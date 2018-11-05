class GraphController < ApplicationController

    before_action :authenticate_user!

    def graphlead
        conn = PG::Connection.open( host: "codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com", user: "jabir", password: "jabir123", dbname: "jabir")
        @result = conn.exec("SELECT count(contactid)contact, to_char(creation_date, 'YYYY-MM')\"month\" FROM public.factcontact group by to_char(creation_date, 'YYYY-MM') order by to_char(creation_date, 'YYYY-MM')")
        @reslead = []
        @result.each do |reslead|
            @reslead << [reslead["month"],reslead["contact"]]
        end
    end

    def graphquote
        conn = PG::Connection.open( host: "codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com", user: "jabir", password: "jabir123", dbname: "jabir")
        @result = conn.exec("SELECT count(quoteid)quotes, to_char(creation_date, 'YYYY-MM')\"month\" FROM public.factquotes group by to_char(creation_date, 'YYYY-MM') order by to_char(creation_date, 'YYYY-MM')")
        @resquote = []
        @result.each do |resquote|
            @resquote << [resquote["month"],resquote["quotes"]]
        end
    end

    def graphelevator
        conn = PG::Connection.open( host: "codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com", user: "jabir", password: "jabir123", dbname: "jabir")
        @result = conn.exec("SELECT company_name , nbelevators from public.dimcustomers")
        @reselevator = []
        @result.each do |reselevator|
            @reselevator << [reselevator["company_name"],reselevator["nbelevators"]]
        end
    end

end
