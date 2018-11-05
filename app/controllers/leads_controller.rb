class LeadsController < ApplicationController
    def new_lead
        lead = Lead.new
        lead.Company_contact_full_name = params["contact"]["name"]
        lead.Company_name = params["contact"]["business"]
        lead.Company_contact_email = params["contact"]["email"]
        lead.Company_contact_phone_number = params["contact"]["phone"]
        lead.Building_project_name = params["contact"]["project"]
        lead.Project_description = params["contact"]["description"]
        lead.Department = params["contact"]["department"]
        lead.Message = params["contact"]["message"]
        #<ActionDispatch::Http::UploadedFile:0x00007f67a2ed6d48> 
        file_attachmment = params["contact"]["attachment"]
        lead.File_attached = file_attachmment.read
        lead.save

        if lead.save
            flash[:success]
            redirect_to '/home#contact'
        end
    end

end
