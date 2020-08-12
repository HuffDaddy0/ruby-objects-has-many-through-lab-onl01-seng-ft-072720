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

  def new_appontment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.find_all {|song| song.patient == self}
  end

  def doctors
    self.appointments.map {|song| song.doctor}
  end
end
