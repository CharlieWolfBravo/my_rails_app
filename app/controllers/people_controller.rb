class PeopleController < ApplicationController
    def welcome
        @person = People.where(name:'Josh').first
    end
end