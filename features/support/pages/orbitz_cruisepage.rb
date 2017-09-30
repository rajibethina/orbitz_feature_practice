class OrbitzCruisepage
  include PageObject

  page_url 'www.orbitz.com'

  link(:cruise_tab, :id => 'tab-cruise-tab')
  select_list(:select_destination, :id =>'cruise-destination')
  select_list(:select_date, :id => 'cruise-departure-month')
  button(:search, :id => 'search-button')


  def select_cruise_destination country_name

    self.select_destination = country_name
    end
  sleep 4
  def select_cruise_date date
    self.select_date = date
  end







#   def select_country airport_name
#     all_airports_element.wait_until_present.lis.each do|each_airport|
#       p each_airport.text
#       if each_airport.text.include? airport_name
#         each_airport.click
#         break
#       end
#     end
#   end
end