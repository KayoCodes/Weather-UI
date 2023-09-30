//
//  ContentView.swift
//  Weather UI
//
//  Created by keenan ray on 9/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    
    var body: some View {
        ZStack {
           
            BackgroundView(topColor: isNight ? .black : .purple,
                           bottomColor: isNight ? .gray : .white)
            VStack{
                cityTextView(cityName: "San Antonio, Texas")
                
                
                cityDisplay(imgName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temp: "80°")
                
                HStack(spacing: 20){
                    ForEach(days) { item in
                        WeatherDayView(day: item)
                    }
                    
                   /* WeatherDayView(name: "TUE",img: "cloud.sun.fill",temp: "75°" )
                    WeatherDayView(name: "WED",img: "cloud.bolt.rain.fill",temp: "80°" )
                    WeatherDayView(name: "THU",img: "cloud.sun.fill",temp: "88°" )
                    WeatherDayView(name: "FRI",img: "smoke.fill",temp: "83°" )
                    WeatherDayView(name: "SAT",img: "cloud.sun.bolt.fill",temp: "79°" )*/
                    
                }
                Spacer()
                    
                Button{
                    isNight.toggle()
                }label: {
                    Text("Change Day Time")
                        .frame(width: 280,height: 50)
                        .background(Color.white)
                        .foregroundColor( isNight ? .gray : .purple)
                        .font(.system(size: 20,weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
                        
                
            }//end Vstzck
        }//end Zstack
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct cityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct cityDisplay: View {
    var imgName: String
    var temp: String
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imgName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: 180,height: 180)
            
            Text(temp)
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom,40)
    }
}
