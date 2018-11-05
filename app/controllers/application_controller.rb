class ApplicationController < ActionController::Base
        protect_from_forgery prepend: true
    
    def after_sign_in_path_for(resource)
        request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    end
      
end
