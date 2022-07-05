require_relative 'employee.rb'

class Manager < Employee
    
    attr_reader :employees
    def initialize(name,title,salary, boss, employees)
        super(name, title, salary, boss)
        @employees  = employees

    end

    def bonus(multipler)
            
        self.sub_salary * multipler
    end

    def sub_salary
       sal = self.salary
       self.employees.each do |employee|
            if employee.is_a?(Manager)
                employee.sub_salary
            else
                sal += employee.salary
            end
        end
        sal

        
    end
    
    
end

darren = Manager.new('darren', 'TA MAnager', 78000, 'ned', [Employee.new('david', 'TA', 10000, 'darren'), Employee.new('shawna', 'TA', 12000, 'darren')])
ned = Manager.new('ned', 'Founder', 1000000, nil,[darren])
david = Employee.new('david', 'TA', 10000, darren)
shawna  =Employee.new('shawna', 'TA', 12000, darren)



p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000