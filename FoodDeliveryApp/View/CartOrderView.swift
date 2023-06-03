//
//  CartOrderView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 03/06/23.
//

import SwiftUI

struct CartOrderView: View {
    
    var body: some View {
        ScrollView {
            HStack(spacing: 20){
                Button(action:{}, label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 25, weight: .heavy))
                        .foregroundColor(.black)
                })

                Spacer()

                Button(action: { }, label: {
                    Image("bagImg")
                        .font(.system(size: 28, weight: .heavy))

                })
            }.padding(EdgeInsets(top: 40, leading: 30, bottom: 0, trailing: 30))

            Text("My Order")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .padding(EdgeInsets(top: 30, leading: 30, bottom: 0, trailing: 230))
//
            
//        List{
          // First order
            
            HStack{
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 100, height: 80)
                        .foregroundColor(.bgColor)
                    
                    Image("Noodles")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 65, height: 65)
                    
                }
              
                VStack(alignment: .leading){
                    Text("Noodles")
                        .bold()
                    Text("with shrimps, egg,pork")
                        .foregroundColor(.TextColor)
                    HStack {
                        Button(action: { }, label: {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.bgColor)
                                .font(.system(size: 20, weight: .heavy))
                                .foregroundColor(.black)
                            
                        })
                        
                        Text("1")
                            .fontWeight(.medium)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                        
                        Button(action: {}, label: {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.bgColor)
                                .font(.system(size: 20, weight: .heavy))
                                .foregroundColor(.black)
                            
                        })
                    }
                    
                }
               
                Text("$7.50")
                Spacer()
            } .padding(EdgeInsets(top: 30, leading: 3, bottom: 20, trailing: 3))
            
//            Second Order
            
            HStack{
               
                
                VStack(alignment: .trailing){
                    HStack{
                        Text("$7.50")
                        Spacer(minLength: 2)
                        Text("Fruits Salad")
                            .bold()
                    } .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    
                    Text("with strawberry, apple,banana")
                        .foregroundColor(.TextColor)
                        .multilineTextAlignment(.trailing)
                    
                    HStack {
                        Button(action: { }, label: {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.bgColor)
                                .font(.system(size: 20, weight: .heavy))
                                .foregroundColor(.black)
                            
                        })
                        
                        Text("1")
                            .fontWeight(.medium)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                        
                        Button(action: {}, label: {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.bgColor)
                                .font(.system(size: 20, weight: .heavy))
                                .foregroundColor(.black)
                            
                        })
                    }
                } .frame(alignment: .trailing)
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 100, height: 80)
                            .foregroundColor(.bgColor)
                        
                        Image("FruitSalad")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 65, height: 65)
                        
                    }
                
                
                
            } .padding(EdgeInsets(top: 20, leading: 3, bottom: 20, trailing: 3))
            
//            Third Order
            
            HStack{
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 100, height: 80)
                        .foregroundColor(.bgColor)
                    
                    Image("Curry")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 65, height: 65)
                    
                }
                Spacer()
                VStack(alignment: .leading){
                    HStack {
                        Text("Curry")
                            .bold()
                        Spacer()
                        Text("$7.50")
                    }
                    Text("with strawberry,tomato,egg")
                        .foregroundColor(.TextColor)
                    HStack {
                        Button(action: { }, label: {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.bgColor)
                                .font(.system(size: 20, weight: .heavy))
                                .foregroundColor(.black)
                            
                        })
                        
                        Text("1")
                            .fontWeight(.medium)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                        
                        Button(action: {}, label: {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.bgColor)
                                .font(.system(size: 20, weight: .heavy))
                                .foregroundColor(.black)
                            
                        })
                    }
                    
                }
                Spacer()
               
            } .padding(EdgeInsets(top: 20, leading: 3, bottom: 20, trailing: 3))
            
            Spacer()
            
            Button(action: {}, label: {
               
                    Text("Check Out")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 350, height: 60)
                        .background(Color.thaiCardColor)
                        .cornerRadius(30)
                    
            }) .padding(EdgeInsets(top: 70, leading: 20, bottom: 30, trailing: 20))
            
        }
        
        }
//    }
}

struct CartOrderView_Previews: PreviewProvider {
    static var previews: some View {
        CartOrderView()
    }
}
