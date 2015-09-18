module V1
  class CustomerSerializer < ActiveModel::Serializer
    attributes :name,
               :latitude,
               :longitude,
               :user_id

    def name
      "#{object.first_name} #{object.second_name}"
    end
  end
end
