class EmailsController < ApplicationController
  def index
  	@emails = Email.all
  end

  def create
  	@email = Email.create(object: Faker::Book::genre,
						  body: Faker::TvShows::Simpsons.quote)
  	
  	respond_to do |format|
  		format.html  { redirect_to root_path }
  		format.js { }
  	end
  end

  def show
  	@email= Email.find(params[:id])

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    redirect_to root_path
  end
end
