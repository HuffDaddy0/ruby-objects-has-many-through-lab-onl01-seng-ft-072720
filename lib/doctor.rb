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
  Appointment.all.find_all {|song| song.doctor == self}
end

def patients
  self.songs.map {|song| song.patient}
end
end
