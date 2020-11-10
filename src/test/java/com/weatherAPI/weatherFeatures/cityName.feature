Feature:
  //http://api.weatherbit.io/v2.0/

  Background:
    * url appBaseURL

  Scenario: get weather When city name is provided
    Given path "/current"
    And param key = appKey

    And param city_id = "4487042"

    When method get
    Then status 200

    And def apiResponse = response
    Then match apiResponse.data[*].city_name contains ["Raleigh"]
    Then match apiResponse.data[*].country_code contains ["US"]