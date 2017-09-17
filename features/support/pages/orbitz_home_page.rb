class OrbitzHomePage
  include PageObject

  page_url 'www.orbitz.com'

  link(:select_flight_tab , :id => 'tab-flight-tab')
  label(:select_roundtrip_tab, :id => 'flight-type-roundtrip-label')
  text_field(:select_dept_name, :id => 'flight-origin')
  text_field(:select_arr_name,:id => 'flight-destination')
  ul(:all_airports, :class => 'results')

  def set_dep_airport city_name , airport_name
    #for text field we are using the self method
    self.select_dept_name = city_name
    #for keyboard using we using self,element and send_keys
    #self.select_dept_name_element.send_keys = city_name
    select_airport airport_name
  end

  def set_arr_airport city_name , airport_name
    #for text field we are using the self method
    self.select_arr_name = city_name

    #for keyboard using we using iwth self,element and send_keys
    #self.select_dept_name_element.send_keys = city_name
    select_airport airport_name
  end

  def select_airport airport_name
    all_airports_element.wait_until_present.lis.each do|each_airport|
      p each_airport.text
      if each_airport.text.include? airport_name
        each_airport.click
        break
    end
  end
end


 # @browser.link(:id => 'tab-flight-tab').click
  #@browser.label(:id => 'flight-type-roundtrip-label').click

end