class SerializableStudent < JSONAPI::Serializable::Resource
  type 'students'

  attributes(*Student.column_names.map(&:to_sym))
end
