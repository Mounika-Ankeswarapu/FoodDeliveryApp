//
//  CartItemCell.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 10/06/23.
//

import SwiftUI

struct CartItemCell: View {
    
    var cartCellType: CartCellType
    @Binding var data: CartItemModel
    //    @Binding var item: Item
    var body: some View {
        switch cartCellType {
        case .leading:
            CartCellLeading(data: $data)
        case .trailing:
            CartCellTrailing(data: $data)
        }
    }
}

struct CartItemCell_Previews: PreviewProvider {
    static let data = CartItemModel(image: Image.Noodles, title: "Noodles", description: "with shrimps,egg,pork", price: "$7.50", quantity: 1)
    static var previews: some View {
        CartItemCell(cartCellType: .trailing, data: .constant(data))
        //        CartCellTrailing(data: .constant(data))
    }
}

struct CartCellLeading: View {
    @Binding var data: CartItemModel
    @State var quantity :Int = 1
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                imageView
                VStack(alignment: .leading) {
                    Text(data.title)
                        .font(.headline.bold())
                    Text(data.description)
                        .font(.caption)
                        .foregroundColor(.TextColor)
                    HStack {
                        Button(action: {
                            if quantity >= 0 {
                                quantity += 1
                            }
                        }, label: {
                            Image.plus
                        })
                        Text("\(quantity)")
                        
                        Button(action: {
                            if quantity > 1 {
                                quantity -= 1
                            }
                        }, label: {
                            Image.minus
                        })
                    }
                }
                Spacer()
                Text(data.price)
                    .font(.headline)
            }.padding(.horizontal, 20)
                .padding(.vertical, 30)
            Divider()
        }
    }
    
    var imageView: some View {
        FoodDeliveryApp.CardViewWithPadding(backgroundColor: .bgColor, cornerRadius: 20, HPadding: 20, VPadding: 8, stroke: .clear, content: {
            Image.Noodles
                .resizable()
                .frame(width: 60, height: 60)
        })
    }
    
    
}

struct CartCellTrailing: View {
    @Binding var data: CartItemModel
    @State var quantity :Int = 1
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Text(data.price)
                    .font(.headline)
                Spacer()
                VStack(alignment: .trailing) {
                    Text(data.title)
                        .font(.headline.bold())
                    Text(data.description)
                        .font(.caption)
                        .foregroundColor(.TextColor)
                    HStack {
                        Button(action: {
                            if quantity >= 0 {
                                quantity += 1
                            }
                        }, label: {
                            Image.plus
                        })
                        Text("\(quantity)")
                        
                        Button(action: {
                            if quantity > 1 {
                                quantity -= 1
                            }
                        }, label: {
                            Image.minus
                        })
                    }
                }
                
                imageView
                
                    .font(.headline)
            }.padding(.horizontal, 20)
                .padding(.vertical, 30)
            Divider()
        }
    }
    
    var imageView: some View {
        FoodDeliveryApp.CardViewWithPadding(backgroundColor: .bgColor, cornerRadius: 20, HPadding: 20, VPadding: 8, stroke: .clear, content: {
            Image.Noodles
                .resizable()
                .frame(width: 60, height: 60)
        })
    }
    
    
    
}

enum CartCellType {
    case leading
    case trailing
}
