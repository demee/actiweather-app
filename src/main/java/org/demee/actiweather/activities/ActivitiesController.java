package org.demee.actiweather.activities;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ActivitiesController {
    @GetMapping("/activities")
    public ActiWeather activities(){
        return new ActiWeather();
    }
}