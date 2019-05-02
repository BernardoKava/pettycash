json.extract! person, :id, :name, :surname, :fullname, :active, :dob, :person_number, :pps_number, :system_item, :created_at, :updated_at
json.url person_url(person, format: :json)
