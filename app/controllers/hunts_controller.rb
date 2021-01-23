class HuntsController < ApplicationController

    def show
        byebug
        @level = Hunt.find(params[:level])
    end



end
