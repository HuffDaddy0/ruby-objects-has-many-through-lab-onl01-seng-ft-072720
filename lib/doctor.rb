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

def new_appontment(date, patient)
  Appointment.new(date, self, patient)
end

def appointments
  Appointment.all.find_all {|song| song.doctor == self}
end

def patients
  self.songs.map {|song| song.patient}
end
end
