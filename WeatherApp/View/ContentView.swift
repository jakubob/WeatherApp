//
//  ContentView.swift
//  WeatherApp
//
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vM: WeatherViewModel
    
    var body: some View {
        VStack {
            Text(vM.cityName)
                .font(.title)
                .padding()
            Text(vM.temperature)
                .font(.largeTitle)
                .bold()
            Text(vM.weatherDescription)
        }
        .onAppear(perform: vM.refresh)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vM: WeatherViewModel(weatherService: WeatherService()))
    }
}
