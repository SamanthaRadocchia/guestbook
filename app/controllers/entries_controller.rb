class EntriesController < ApplicationController

	def sign_in
			@name = params[:visitor_name] # takes input for visitor name in sign_in.html and adds to @name instance variable 
		if !@name.blank? # prevents blanks from being added to db
			@entry = Entry.create({:name => @name}) #new object, takes the values to be stored as named parameters, and then saves the object to the database.
		end 

		@entries = Entry.find(:all) # gets data out of the model 
		#he Entry object includes a find method—like new and save, inherited from its parent ActiveRecord::Base class without any additional programming. 
	end

end
