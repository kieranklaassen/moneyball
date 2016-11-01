class VisitorsController < ApplicationController
  def index
    @features = Feature.all
  end
end
