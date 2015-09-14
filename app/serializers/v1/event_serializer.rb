module V1
  class EventSerializer < ActiveModel::Serializer
    attributes :occassion,
               :invited_count,
               :year,
               :month,
               :day,
    # Invited count should be a computed prop
  end
end
