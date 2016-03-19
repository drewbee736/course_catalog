json.array!(@coursesubjects) do |coursesubject|
  json.extract! coursesubject, :id
  json.url coursesubject_url(coursesubject, format: :json)
end
