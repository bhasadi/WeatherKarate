Feature:
  //http://api.weatherbit.io/v2.0/

  Background:
    * url appBaseURL


  Scenario: get weather When Latitude & Longitude is provided
    Given path "/current"
    And param key = appKey

    And param lat = -33.86785
    And param lon = 151.20732

    When method get
    Then status 200

    And def apiResponse = response
    Then match apiResponse.data[*].city_name contains ["Sydney"]
    Then match apiResponse.data[*].country_code contains ["AU"]