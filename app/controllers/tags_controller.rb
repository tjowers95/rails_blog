class TagsController < ApplicationController
 include TagsHelper
 def index
  @tags = Tag.all
 end
 def show
  @tags = Tag.find(params[:id])
 end
 def destroy
  @tags = Tag.find(params[:id])
  @tags.destroy
 end
end
