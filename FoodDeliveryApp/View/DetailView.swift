//
//  DetailView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 02/06/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        
        VStack {
            HStack{
                Spacer()
                Button(action: {}, label: {
                    Image("bagImg")
                })
                
            }
            Spacer(minLength: 230)
            
            NavigationLink(destination: CartOrderView(), label: {
                DetailsCardView(fillColor: .white)
            
//            DetailCardView(image: Image.Noodles, fillColor: .white)
        })
          
        }
        .background(Color.thaiCardColor)
        
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
