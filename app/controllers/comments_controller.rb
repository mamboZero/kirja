class CommentsController < ApplicationController
  # before_action :set_comment, only: [:show, :edit, :update, :destroy]

  
  # GET /comments/new
  # def new
  #   @comment = Comment.new
  # end

  # POST /comments
  # POST /comments.json
  def create
    @followup = Followup.find(params[:followup_id])
    @comment = @followup.comments.create(comment_params)
    redirect_to followup_path(@followup)
  end

  
  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:commentar)
    end
end
