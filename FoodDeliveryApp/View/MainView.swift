//
//  MainView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 01/06/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var searchViewModel = HomeViewModel()
    @State private var isSelected1 = false
    @State private var isSelected2 = false
    @State private var isSelected3 = false
    @State private var isSelected4 = false
  
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
                
                SearchField(onTapSearch: $searchViewModel.showSearch, text: $searchViewModel.searchText)
                
                    .padding(EdgeInsets(top: 17, leading: 20, bottom: 0, trailing: 30))
//                SearchText()
                    
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        CategoryItemView(isSelected: $isSelected1, color: .thaiCardColor, fillColor: .bgColor, image: Image.AllDishes, title: "All")
                            .onTapGesture {
                                isSelected1.toggle()
                                if isSelected1 {
                                    isSelected2 = false
                                    isSelected3 = false
                                    isSelected4 = false
                                }
                            }
                        CategoryItemView(isSelected: $isSelected2, color: .thaiCardColor, fillColor: .bgColor, image: Image.Italian, title: "Italian")
                            .onTapGesture {
                                isSelected2.toggle()
                                if isSelected2 {
                                    isSelected1 = false
                                    isSelected3 = false
                                    isSelected4 = false
                                }
                            }
                        CategoryItemView(isSelected: $isSelected3, color: .thaiCardColor, fillColor: .bgColor, image: Image.Thai, title: "Thai")
                            .onTapGesture {
                                isSelected3.toggle()
                                if isSelected3 {
                                    isSelected1 = false
                                    isSelected2 = false
                                    isSelected4 = false
                                }
                            }
                        CategoryItemView(isSelected: $isSelected4, color: .thaiCardColor, fillColor: .bgColor, image: Image.Asian, title: "Asian")
                            .onTapGesture {
                                isSelected4.toggle()
                                if isSelected4 {
                                    isSelected1 = false
                                    isSelected2 = false
                                    isSelected3 = false
                                }
                            }
                        
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
//            .navigationBarHidden(true)
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
