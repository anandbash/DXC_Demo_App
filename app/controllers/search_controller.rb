class SearchController < ApplicationController

    def search_students
        #byebug
        if params["q"].present?
            abc = params["q"].downcase
            #abc = "Anand"
            #Student.where("LOWER(first_name) = ? or LOWER(last_name) LIKE ?", abc, abc) 
            @students = Student.where(Student.arel_table[:first_name].lower.matches("%#{abc.downcase}%"))
            #.or(Student.where(Student.arel_table[:last_name].lower.matches("%#{abc.downcase}%")))
            respond_to do |format|
                format.js {render layout: false, content_type: "text/javascript", collection: @students }
            end
            
        else 
            redirect_to_root_path #, flash[:error] = "Search cannot be blank."
           
        end
    end

end
