class Doctor 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def appointments 
    Appointment.all.select {|apt| apt.doctor == self}
  end
  
  def new_appointment(date, patient)
    Appintment.new(date, patient , self)
  end
  
  def patients
    appointments.map {|apt| apt.patient}
  end
end