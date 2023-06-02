class People < ApplicationRecord


    def say_something(input)
        "#{self.name}: \"#{input}\""
    end
end
