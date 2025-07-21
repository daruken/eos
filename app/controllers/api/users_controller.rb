module Api
  class UsersController < ApplicationController
    def index
      @users = UserFetcher.all
      render json: @users
    end

    def show
      @user = UserFetcher.fetch_by_id(params[:id])
      if @user
        render json: @user
      else
        render json: { error: "User not found" }, status: :not_found
      end
    end
  end
end
