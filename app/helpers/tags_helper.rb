module TagsHelper
  def tag_params
    params.require(:tag).permit(:id_ar)
  end
end
