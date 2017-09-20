class OrbitzHomePage
  include PageObject

  page_url 'www.orbitz.com'

  link(:select_flight_tab , :id => 'tab-flight-tab')
  label(:select_roundtrip_tab, :id => 'flight-type-roundtrip-label')
  text_field(:select_dept_name, :id => 'flight-origin')
  text_field(:select_arr_name,:id => 'flight-destination')
  ul(:all_airports, :class => 'results')
  text_field(:dept_date, :id => 'flight-departing')
  text_field(:arr_date, :id => 'flight-returning')
  button(:search, :id => 'search-button')

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

  def select_future_dep_date
    self.dept_date = change_date 2
  end

  def select_future_arr_date
    self.arr_date = change_date 3
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
  def change_date(no_of_days)
    (Time.now+60*60*24*no_of_days).strftime('%m/%d/%Y')
  end

  end