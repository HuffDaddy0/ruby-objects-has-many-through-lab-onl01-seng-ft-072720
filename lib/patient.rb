class Patient
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
    Appointment.all.find_all {|song| song.patient == self}
  end

  def patients
    self.appointments.map {|song| song.patient}
  end
end
