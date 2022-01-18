class TestController < ApplicationController

  def index
    render json: { message: 'Hello from rails v1' }
  end

end
