//
//  WeatherAppApp.swift
//  WeatherApp
//
//

import SwiftUI

@main
struct WeatherAppApp: App {
    var body: some Scene {
        WindowGroup {
            let weatherService = WeatherService()
            let vM = WeatherViewModel(weatherService: weatherService)
            ContentView(vM: vM)
        }
    }
}
