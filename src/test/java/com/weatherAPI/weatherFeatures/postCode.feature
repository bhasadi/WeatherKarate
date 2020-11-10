Feature:
  //http://api.weatherbit.io/v2.0/

  Background:
    * url appBaseURL

  Scenario: get weather When postal code is provided
    Given path "/current"
    And param key = appKey

    And param postal_code = 28546

    When method get
    Then status 200

    And def apiResponse = response
    Then match apiResponse.data[*].city_name contains ["Pumpkin Center"]
    Then match apiResponse.data[*].country_code contains ["US"]