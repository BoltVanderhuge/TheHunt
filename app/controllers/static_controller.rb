class StaticController < ApplicationController
    skip_before_action :authorized
    
end
