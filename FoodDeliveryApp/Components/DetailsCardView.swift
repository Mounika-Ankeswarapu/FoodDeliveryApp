//
//  DetailsCardView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 03/06/23.
//

import SwiftUI

struct DetailsCardView: View {
    
    var fillColor: Color
    @State private var rating = 0
    var body: some View {
        VStack{
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 40.0)
                    .frame(width: 401, height: 540)
                    .foregroundColor(fillColor)
                Image("Noodles")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 270,height: 250)
                    .offset(x: 0, y: -270)
                VStack{
                    
                    VStack{
                        Text("Rice Noodles with shrimps,egg,pork,choy,cabbage.Noodles")
                            .font(.caption)
                            .foregroundColor(.black)
                        
                            .multilineTextAlignment(.leading)
                        //                        .lineLimit(3)
                        Text("fave or trying something completely new, we want your")
                            .foregroundColor(.black)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                        Text("tastebuds to be your happy buds.")
                            .foregroundColor(.black)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                    }  .padding(EdgeInsets(top: 5, leading: 10, bottom: 30, trailing: 10))
                    
                    VStack(alignment: .leading){
                        Text("Noodles")
                            .foregroundColor(.black)
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        
                        
                        HStack{
                            Text("300g/530 kcal")
                                .foregroundColor(.black)
                                .font(.caption)
                            
                            Spacer()
                            Text("1 portion")
                                .foregroundColor(.black)
                                .font(.caption)
                        }
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 30))
                        
                    }
                    HStack{
                        Image("Logo")
                        VStack(alignment: .leading){
                            Text("Chin Club")
                                .foregroundColor(.black)
                            Text("3.1 km from you")
                                .foregroundColor(Color.TextColor)
                        }
                        Spacer()
                        
                        RatingStars(rating: $rating)
                    }.padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
                    
                    HStack {
                        VStack(alignment: .leading){
                            Text("Price:").foregroundColor(.black) + Text("$9.20").foregroundColor(.TextColor)
                            Text("$7,50") .fontWeight(.bold)  .foregroundColor(.black)
                            
                        }
                        Spacer()
                        
                        
                        Button(action: {}, label: {
                            HStack{
                                
                                Text("Add to cart ")
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: 150, height: 50)
                                    .background(Color.thaiCardColor)
                                    .cornerRadius(30)
                                
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.thaiCardColor)
                                
                                    
//                                    .renderingMode(.original)
                                
                            }
                        })
                        
                        
                    } .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 20))
                    
                    
                }
              
            }
            
        }
    }
}

struct DetailsCardView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsCardView(fillColor: .bgColor)
    }
}
