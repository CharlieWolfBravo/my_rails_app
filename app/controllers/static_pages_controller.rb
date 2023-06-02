class StaticPagesController < ApplicationController

    def index()
        @name = 'Lance'
        @full_name = 'Lance Chisholm'
        @years_experience = 4
    end
end
