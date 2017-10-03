class OrbitzCubaCruiseResults
  include PageObject

  text_field(:cruise_length, :id => 'length-3-5')




  def select_cruise_length select_nights
    cruise_length = select_nights

  end

end