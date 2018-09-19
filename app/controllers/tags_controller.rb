class TagsController < ApplicationController
 include TagsHelper
 def index
  @tags = Tag.all
 end
 def show
  @tags = Tag.find(params[:id])
 end
before_action :require_login, only: [:destroy]
 def destroy
  @tags = Tag.find(params[:id])
  @tags.destroy
  flash.notice = "Tag '#{@tags.name}' Destroyed"
  redirect_to tags_path(Tag.all)
 end
end
