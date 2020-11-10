package com.weatherAPI.weatherFeatures;

import com.intuit.karate.junit5.Karate;

class runFeature {
    @Karate.Test
    Karate testFeature() {
        return Karate.run("latitude").relativeTo(getClass());
    }

}