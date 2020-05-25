//
//  ContentView.swift
//  ImageCarousel
//
//  Created by The book Air on 2020/05/25.
//  Copyright © 2020 The book Air. All rights reserved.
//
import SwiftUI


extension Font {
    static func avenirNext(size: Int) -> Font {
        return Font.custom("Avenir Next", size: CGFloat(size))
    }
    
    static func avenirNextRegular(size: Int) -> Font{
        return Font.custom("AvenirNext-Regular", size: CGFloat(size))
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView {
            
            GeometryReader { geometry in
                ImageCarouselView(numberOfImages: 3) {
                    Image("image_carousel_1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_2")
                        .resizable()
                        .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                    Image("image_carousel_3")
                    .resizable()
                    .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
                }
            }.frame(width: UIScreen.main.bounds.width, height: 300, alignment: .center)
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image("person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 66)
                    .clipShape(Circle())
                    .shadow(radius: 6)
                    
                    VStack(alignment: .leading){
                        Text("Article Written By")
                            .font(.avenirNext(size: 12))
                            .foregroundColor(.gray)
                        Text("채씨")
                            .font(.avenirNext(size: 17))
                    }
                }
                
                Text("25 May 2020. 5min read")
                    .font(.avenirNextRegular(size: 12))
                    .foregroundColor(.gray)
                
                Text("자가 격리자의 하루")
                    .font(.avenirNext(size: 28))
                
                Text(loremIpsum)
                .lineLimit(nil)
                    .font(.avenirNextRegular(size: 17))
            }
            
            .padding(.horizontal)
            .padding(.top, 16.0)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let loremIpsum = """
Lorem ipsum dolor sit amet consectetur adipiscing elit donec, gravida commodo hac non mattis augue duis vitae inceptos, laoreet taciti at vehicula cum arcu dictum. Cras netus vivamus sociis pulvinar est erat, quisque imperdiet velit a justo maecenas, pretium gravida ut himenaeos nam. Tellus quis libero sociis class nec hendrerit, id proin facilisis praesent bibendum vehicula tristique, fringilla augue vitae primis turpis.

Lorem ipsum dolor sit amet consectetur adipiscing elit donec, gravida commodo hac non mattis augue duis vitae inceptos, laoreet taciti at vehicula cum arcu dictum. Cras netus vivamus sociis pulvinar est erat, quisque imperdiet velit a justo maecenas, pretium gravida ut himenaeos nam. Tellus quis libero sociis class nec hendrerit, id proin facilisis praesent bibendum vehicula tristique, fringilla augue vitae primis turpis.
"""
