class Doctor
  attr_accessor :name, :appointments

  @@all = []
  def initialize(name)
    @name = name
    @appointments = []
    @@all<<self
  end

  def new_appointment(date,patient)
    Appointment.new(date,patient,self)
  end

  def patients
    @appointments.map{|app| app.patient}
  end
end
