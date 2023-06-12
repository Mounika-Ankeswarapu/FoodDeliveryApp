//
//  DetailView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 02/06/23.
//
import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = DetailViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                Image.Noodles
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 270, height: 250)
                    .offset(x: 0, y: -160)
                    .zIndex(1)
                VStack {
                    DetailCardView(fillColor: Color.white).environmentObject(viewModel)
                        .padding(.top, 140)
                }
                .background(Color.thaiCardColor)
                .ignoresSafeArea()
            }
            .navigationDestination(isPresented: $viewModel.navigateToOrders, destination: {
                CartOrderView()
            })
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
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
