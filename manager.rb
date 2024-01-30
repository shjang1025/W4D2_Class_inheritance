require_relative "employee"

class Manager < Employee

    def initialize(name, title, salary, boss)
        @assigned_employee = []
        super
    end

    def bonus(multiplier)
        result = 0
        @assigned_employee.each do |ele|
            result += ele.salary
        end
        result * multiplier
    end




end