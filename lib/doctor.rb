class Doctor
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
<<<<<<< HEAD
  def new_appointment(patient, date)
=======
  def new_appointment(date, patient)
>>>>>>> 7ac193a2c5796218e87ac10bec08ca69328e699e
    Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointment.all.select { |appointment| appointment.doctor.name == @name }
  end
  
  def patients
<<<<<<< HEAD
    appointments.collect { |appointment| appointment.patient }
=======
    appointments.collect { |appointment| appointment.doctor == self }
>>>>>>> 7ac193a2c5796218e87ac10bec08ca69328e699e
  end
end