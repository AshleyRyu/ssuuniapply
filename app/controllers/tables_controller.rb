class TablesController < ActionController::Base
   def index
      @results = Table.all.group(:university)
   end

   def find
      @results = Result.where(university: params['search'])
      
      render json: @results
   end
   
   def map
       @result = Result.where(university: params['university'], subject: params['subject']).first
   end
   
   def navi
      @car = Table.where(university: params['university']).first
   end
end