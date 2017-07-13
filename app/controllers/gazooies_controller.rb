class GazooiesController < ApplicationController

  def index
    @gazooiesList = Gazooy.order("datetime(created_at) DESC").all
    @author = User.all

  end

end
