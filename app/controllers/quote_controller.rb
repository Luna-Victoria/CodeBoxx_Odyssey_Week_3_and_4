class QuoteController < ApplicationController
    def new_resquote
        resquote = Quote.new
        resquote.Building_Residential = true
        resquote.companyname = params["companyname"]
        resquote.contactemail = params["contactemail"]
        resquote.Appartment = params["apps"]
        resquote.Floors = params["floors"]
        resquote.Basement = params["basements"]
        resquote.TotalElevators = params["resultres"]
        resquote.TotalPrice = params["restotalprice"]
        resquote.Quality = params["resquality"]
        resquote.save

        if resquote.save
            flash[:success]
            redirect_to '/thanks'
        end
    end

    def new_comquote
        comquote = Quote.new
        comquote.Building_Commercial = true
        comquote.companyname = params["companyname"]
        comquote.contactemail = params["contactemail"]
        comquote.Shops = params["shops"]
        comquote.Floors = params["floors"]
        comquote.Basement = params["basements"]
        comquote.Parkings = params["parkings"]
        comquote.Elevators = params["elevators"]
        comquote.TotalElevators = params["resultcom"]
        comquote.TotalPrice = params["comtotalprice"]
        comquote.Quality = params["comquality"]
        comquote.save

        if comquote.save
            flash[:success]
            redirect_to '/thanks'
        end    
    end

    def new_corpquote
        corpquote = Quote.new
        corpquote.Building_Corporate = true
        corpquote.companyname = params["companyname"]
        corpquote.contactemail = params["contactemail"]
        corpquote.Shops = params["shops"]
        corpquote.Floors = params["floors"]
        corpquote.Basement = params["basements"]
        corpquote.Parkings = params["parkings"]
        corpquote.Occupants = params["occupants"]
        corpquote.TotalElevators = params["resultcorp"]
        corpquote.TotalPrice = params["corptotalprice"]
        corpquote.Quality = params["corpquality"]
        corpquote.save

        if corpquote.save
            flash[:success]
            redirect_to '/thanks'
        end 
    end

    def new_hybquote
        hybquote = Quote.new
        hybquote.Building_Hybride = true
        hybquote.companyname = params["companyname"]
        hybquote.contactemail = params["contactemail"]
        hybquote.Shops = params["shops"]
        hybquote.Floors = params["floors"]
        hybquote.Basement = params["basements"]
        hybquote.Parkings = params["parkings"]
        hybquote.Occupants = params["occupants"]
        hybquote.ActiveHours = params["activehours"]
        hybquote.TotalElevators = params["resulthyb"]
        hybquote.TotalPrice = params["hybtotalprice"]
        hybquote.Quality = params["hybquality"]
        hybquote.save

        if hybquote.save
            flash[:success]
            redirect_to '/thanks'
        end  
    end
end


