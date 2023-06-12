//
//  CartViewModel.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 10/06/23.
//

import Foundation
import SwiftUI

class CartViewModel: ObservableObject {
    @Published var arrayOfOrders = [
        CartItemModel(image: Image.Noodles, title: "Noodles", description: "with shrimps,egg,pork", price: "$7.50", quantity: 1),
         CartItemModel(image: Image.FruitSalad, title: "Fruits Salad", description: "with strawberry,tomato, egg", price: "$7.50", quantity: 1),
        CartItemModel(image: Image.Curry, title: "Curry", description: "with strawberry,tomato, egg", price: "$7.50", quantity: 1)
    ]
}
