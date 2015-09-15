module V1
  class CustomerSerializer < ActiveModel::Serializer
    attributes :name,
               :latitude,
               :longitude

    def name
      "#{object.first_name} #{object.second_name}"
    end
  end
end
