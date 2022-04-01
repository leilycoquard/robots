class PagesController < ApplicationController
    def home
      @robots = Robot.all
    end
end
