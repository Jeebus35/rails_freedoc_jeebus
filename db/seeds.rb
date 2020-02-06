require 'faker'

Patient.destroy_all
Doctor.destroy_all


p_array=[]
d_array=[]
a_array=[]
c_array=[]
s_array=[]
hm_array=[]


20.times {

cit = City.create!(name: Faker::Address.city)
c_array<<cit

pat = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Superhero.name, city: c_array.sample)
p_array<< pat

doc = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Creature::Animal.name, zip_code: Faker::Number.between(from: 34500, to: 75000), city: c_array.sample)
d_array<<doc

app = Appointment.create!(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 50), doctor: d_array.sample, patient: p_array.sample, city: c_array.sample)
a_array<<app

spe = Specialty.create!(name: Faker::Educator.subject)
s_array<<spe

hea = HealthMeeting.create!(doctor: d_array.sample, specialty: s_array.sample)
hm_array<<hea

   }