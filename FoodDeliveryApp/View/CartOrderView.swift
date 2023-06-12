//
//  CartOrderView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 03/06/23.
//

import SwiftUI

struct CartOrderView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = CartViewModel()

    var body: some View {
        NavigationStack{
            ScrollView {
                
                    Text("My Order")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 0, trailing: 230))
                    
                    VStack(alignment: .leading) {
                        ForEach(Array(viewModel.arrayOfOrders.enumerated()), id: \.offset) { index, item in
                            getView(index, item: item)
                        }
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {   }, label: {
                        
                        Text("Check Out")
                            .bold()
                            .foregroundColor(.white)
                            .frame(width: 350, height: 60)
                            .background(Color.thaiCardColor)
                            .cornerRadius(30)
                        
                    }) .padding(EdgeInsets(top: 70, leading: 20, bottom: 30, trailing: 20))
                    
                }
            
            
//        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { dismiss() }, label: {
                    Image.back
                }).zIndex(2)
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { }, label: {
                    Image.bagImg
                }).zIndex(2)
            }
        }
            
        }
        .navigationBarBackButtonHidden()
    }
    
    func getView(_ index: Int, item: CartItemModel) -> some View {
        index % 2 == 0 ? CartItemCell(cartCellType: .leading, data: .constant(item)) : CartItemCell(cartCellType: .trailing, data: .constant(item))
    }
}


struct CartOrderView_Previews: PreviewProvider {
    static var previews: some View {
        CartOrderView()
    }
}


 
