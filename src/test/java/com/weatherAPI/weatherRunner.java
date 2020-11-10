package com.weatherAPI;

import com.intuit.karate.junit5.Karate;

class weatherRunner {

    // this will run all *.feature files that exist in sub-directories
    // see https://github.com/intuit/karate#naming-conventions
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

    // this will run all *.feature files that exist in a given directory
    @Karate.Test
    Karate testWeatherFeatures() {
        String featuresPath = "com/weatherAPI/weatherFeatures";
        return Karate.run("classpath:" + featuresPath).relativeTo(getClass());
    }

    // this will run the given feature file in the given directory
    @Karate.Test
    Karate testSingleFeature() {
        String featureName = "cityName" + ".feature";
        String featuresPath = "com/weatherAPI/weatherFeatures/" + featureName;
        return Karate.run("classpath:" + featuresPath);

    }

}