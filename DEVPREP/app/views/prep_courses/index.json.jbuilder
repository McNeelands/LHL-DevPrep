json.array!(@prep_courses) do |prep_course|
  json.extract! prep_course, :id, :title, :description, :text
  json.url prep_course_url(prep_course, format: :json)
end
