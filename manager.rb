require_relative "employee"

class Manager < Employee
    attr_reader :salary

    attr_accessor :assigned_employee
    def initialize(name, title, salary, boss)
        @assigned_employee = []
        super
    end

    def bonus(multiplier)
        result = 0
        @assigned_employee.each do |ele|
            if ele.is_a?(Manager)
                result += ele.salary
                # ele.assigned_employee.each do |ele2|
                #     result += ele2.salary
                # end
                result += ele.bonus(1)

            else
                result += ele.salary
            end
        end
        result * multiplier
    end




end
