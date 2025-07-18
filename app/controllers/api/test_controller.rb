module Api
  class TestController < ApplicationController
    def index
      render json: { message: "Test Controller Index" }
    end
  end
end
