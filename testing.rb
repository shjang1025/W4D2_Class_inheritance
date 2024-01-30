require_relative "manager"

ned = Manager.new("Ned","Founder",1000000, nil)
darren = Manager.new("Darren","TA Manager",78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)
ned.assigned_employee << darren
darren.assigned_employee << shawna << david
# p ned.is_a?(Employee)
# p ned.is_a?(Manager)
# p shawna.is_a?(Employee)
# p shawna.is_a?(Manager)
p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000
