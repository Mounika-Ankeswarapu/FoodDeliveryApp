//
//  MainView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 01/06/23.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationView{
            ScrollView{
                HStack{
                    Button(action:{}, label: {
                        Image("menuicon")
                    })
                    
                    Spacer()
                    
                    Button(action: { }, label: {
                        Image("bagImg")
                    })
                }.padding(EdgeInsets(top: 40, leading: 30, bottom: 0, trailing: 30))
                VStack(alignment: .leading) {
                    Text("Hi James")
                        .font(.title)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
               
                    Text("What do you want to order today?")
                        .font(.caption)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                   
                    
                    
                }.padding(EdgeInsets(top: 30, leading: -90, bottom: 0, trailing: 50))
                
              SearchText()
                    .padding(EdgeInsets(top: 17, leading: 20, bottom: 0, trailing: 30))
                
              ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            
                                CategoryItemView(image: Image.AllDishes, title: "All", fillColor: .bgColor)
                                CategoryItemView(image: Image.Italian, title: "Italian", fillColor: .bgColor)
                                CategoryItemView(image: Image.Thai, title: "Thai", fillColor: .thaiCardColor)
                                CategoryItemView(image: Image.Asian, title: "Asian", fillColor: .bgColor)
                            
                        }.padding(EdgeInsets(top: 20, leading: 50, bottom: 0, trailing: 50))
                    }
              .padding(.horizontal, -20)
            
                Text("Specials")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding(EdgeInsets(top: 15, leading: 30, bottom: 0, trailing: 250))
                
                NavigationLink(destination: DetailView(), label: {
                HStack {
                    OverlapView(image: Image.Noodles, title: "Noodles", price: "$7.2", fillColor: .bgColor)
                    Spacer(minLength: 30)
                    OverlapView(image: Image.Pasta, title: "Pasta", price: "$6.2", fillColor: .bgColor)
                } .padding(EdgeInsets(top: 5, leading: 30, bottom: 0, trailing: 0))
                        .foregroundColor(.black)
                })
                
                Text("Recommended")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
                    .padding(EdgeInsets(top: 15, leading: 30, bottom: 0, trailing: 170))
                ScrollView(.horizontal) {
                    HStack {
                        Image("cake")
                        Image("bbq")
                        Image("kabab")
                    }.padding(EdgeInsets(top: 5, leading: 50, bottom: 0, trailing: 50))
                }
                
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
