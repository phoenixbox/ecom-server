module V1
  class EventSerializer < ActiveModel::Serializer
    attributes :occassion,
               :invited_count,
               :year,
               :month,
               :day,
               :cancelled
  end
end
