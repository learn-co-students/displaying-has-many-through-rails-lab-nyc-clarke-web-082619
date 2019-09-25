class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def read_by_human
        self.appointment_datetime.to_formatted_s(:long_ordinal).split.insert(-2, 'at').join(' ')
    end

end
