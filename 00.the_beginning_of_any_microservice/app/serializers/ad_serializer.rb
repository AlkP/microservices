class AdSerializer
  include FastJsonapi::ObjectSerializer

  attributes %i[
    title description city lat lon
  ]
end
