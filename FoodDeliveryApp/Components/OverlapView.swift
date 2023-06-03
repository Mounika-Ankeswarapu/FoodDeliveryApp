//
//  OverlapView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 01/06/23.
//

import Foundation
import SwiftUI

struct OverlapView: View {
    var image: Image
    var title: String
    var price: String
    var fillColor: Color
    var body: some View {
        ZStack {
         
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 150, height: 240)
                .foregroundColor(fillColor)
            
                VStack(alignment: .leading){
                    image
                        .frame(width: 100, height: 100)
                        .offset(x: -15, y: -10)
                    VStack(alignment: .leading) {
                        Text(title)
                            .font(.headline)
                            .fontWeight(.bold)
                        Text(price)
                            .font(.title3)
                    }.padding(EdgeInsets(top: 2, leading: 20, bottom: 0, trailing: 0))
                        HStack{
                            Text("See Details")
                                .font(.caption)
//                                .padding(EdgeInsets(top: 10, leading: 10, bottom: 20, trailing: 20))
                            Spacer()
                            Button(action: {}, label: {
                                Image("chevron")

                            })
                      
                        } .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                        
                        
                    
                
            }
        }
        
    }
}


struct OverlapView_Previews: PreviewProvider {
    static var previews: some View {
        OverlapView(image: Image.Noodles, title: "Noodles", price: "$7.2", fillColor: .bgColor)
        OverlapView(image: Image.Pasta, title: "Pasta", price: "$6.2", fillColor: .bgColor)
        
    }
}
