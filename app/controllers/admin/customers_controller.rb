class Admin::CustomersController < ApplicationController

   layout 'admin'   
 
   def index
    
    @buyers = Buyer.paginate(
      :order => "name ASC",
      :page => params[:page],
      :per_page => 30
    )
   end

   def edit
       @buyer = Buyer.find(params[:id])
   end
   
   def destroy 
       Buyer.find(params[:id]).destroy
       redirect_to :action => 'index'
   end

end
