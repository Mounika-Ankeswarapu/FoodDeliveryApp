//
//  Stepper.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 11/06/23.
//

import SwiftUI

struct Stepper : View {
//    @Binding var item: Item
    @State var quantity = 1
    var body: some View {
        HStack{
            Button(action: {
                if self.quantity > 1 { self.quantity -= 1}
                
            }) {
                Image(systemName: "minus")
                    .font(.system(size: 16, weight: .heavy))
                    .foregroundColor(.black)
                
            }
            
            Text("\(self.quantity)")
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.horizontal, 10 )
                .padding(.vertical, 5)
                .background(Color.black.opacity(0.06))
            
            Button(action: {
                self.quantity = self.quantity + 1
               
            }) {
                Image(systemName: "plus")
                    .font(.system(size: 16, weight: .heavy))
                    .foregroundColor(.black)
                
            }
        }
    }
}
struct Stepper_Previews: PreviewProvider {
    static var previews: some View {
//        let item = Item(quantity: 1)
        Stepper()
    }
}
