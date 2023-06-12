//
//  AddToCartButton.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 10/06/23.
//

import SwiftUI

struct AddToCartButton: View {
    var onClick: (() -> Void)?
    var body: some View {
        CardView(backgroundColor: .thaiCardColor, cornerRadius: 30, padding: 20, stroke: .clear) {
            Button(action: { onClick!() }, label: {
                HStack(alignment: .center, spacing: 30) {
                    Text("Add to cart")
                        .font(.caption.bold())
                        .foregroundColor(.white)

                    Image.plus
                }
            })
        }
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButton()
    }
}
