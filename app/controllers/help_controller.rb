class HelpController < ApplicationController

    layout 'main'
    def index
    
    end

    def download
        send_file '/home/jhass/dcarbone/doc/manual.pdf', :type=>"application/pdf" 
    end

 
end
