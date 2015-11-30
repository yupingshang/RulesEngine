class SearchController < ApplicationController
  def index
    @centers = [['Vancouver', '49.25,-123.1'],
                ['Calgary', '51.05,-114.066667'],
                ['Toronto','43.7,-79.4']]
  end
end
