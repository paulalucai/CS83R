json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :petname, :owner, :petwalker, :apptdate, :apptlength
  json.url appointment_url(appointment, format: :json)
end
