class CommentsController < ApplicationController

  def create
    @movie = Movie.find_by(id: params[:movie_id])
    @comment = @movie.comments.build(comment_params)

    if @comment.save
      render json: @comment
    else
      render json: { message: @comment.errors }, status: 400
    end
  end

private

  def comment_params
    params.require(:comment).permit(:content, :movie_id)
  end

end
