//
//  WeatherDayView.swift
//  Weather UI
//
//  Created by keenan ray on 9/4/23.
//

import SwiftUI

struct WeatherDayView: View {
    //var name: String
    //var img: String
    //var temp : String
    
    var day: Weather = days[4]
    var body: some View {
        VStack(spacing: 5){
            Text(day.day)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
            Image(systemName: day.img)
            //.foregroundColor(Color.white)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.white)
                .frame(width: 35,height: 35)
            
            Text(day.temp)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(.white)
            
        }
    }
}
