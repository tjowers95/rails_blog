class AuthorSessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(articles_path, notice: 'Signed In')
    else
      flash.now.alert = "Credentials Not Recognized"
      render action: :new
    end
  end
  
  def destroy
    logout
    redirect_to(:authors, notice: "Signed Out")
  end
end
