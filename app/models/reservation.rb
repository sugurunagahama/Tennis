class Reservation < ApplicationRecord
  
     validates :court_name,presence: true
      validates :time,presence: true
      validates :number,presence: true
      validates :name, presence: true
      validates :email, presence: true
      validates :phone_number, presence: true
      validates :password,presence: true
      has_secure_password
 
end
