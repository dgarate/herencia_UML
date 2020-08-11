class Appointment 
    attr_accessor :location, :purpose, :hour, :min 
    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

class MonthlyAppointment < Appointment
    attr_accessor :day
    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day
    end

    def accours_on?(day)
        @day == day 
    end

    def to_s
        puts "Reunión mensual en #{@location} sobre #{@purpose} el día #{day} a la(s) #{@hour}:#{@min}"
    end 
end

class DailyAppointment < Appointment
    
    def accours_on?(hour, min)
        @hour == hour && @min == min
    end

    def to_s
        puts "Reunión mensual en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{@min}"
    end 
end


class OneTimeAppointment  < Appointment
    attr_accessor :day, :month, :year 
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year        
    end

    def accours_on?(day, month, year)
        @day == day && @month == month && @year == year
    end

    def to_s
        puts "Reunión mensual en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}"
    end 


end

puts MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23).to_s
puts DailyAppointment.new('NASA', 'Aliens', 8, 15).to_s
puts DailyAppointment.new('NASA', 'Aliens', 8, 15).accours_on?(8, 15)
puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019).to_s
