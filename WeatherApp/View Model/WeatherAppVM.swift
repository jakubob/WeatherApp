//
//  WeatherAppVM.swift
//  WeatherApp
//
//

import Foundation

public class WeatherViewModel: ObservableObject {
    @Published var cityName: String = "City n/a"
    @Published var temperature: String = "00"
    @Published var weatherDescription: String = "n/a"
    
    public let weatherService: WeatherService
    
    public init(weatherService: WeatherService) {
        self.weatherService = weatherService
    }
    
    public func refresh() {
        weatherService.loadWeatherData { weather in
            DispatchQueue.main.async {
                self.cityName = weather.city
                self.temperature = "\(weather.temperature) degrees"
                self.weatherDescription = weather.description
            }
        }
    }
}
