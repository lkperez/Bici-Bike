class PagesController < ApplicationController
    def show
        render template: "pages/#{params[:page]}"
    end
    def map
        # Your 'map' action code goes here
    end
  end 