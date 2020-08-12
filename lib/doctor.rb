class Doctor
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end



def appointments
  Appointment.all.find_all {|appt| appt.doctor == self}
end

def patients
  self.appointments.map {|appt| appt.patient}
end
end
