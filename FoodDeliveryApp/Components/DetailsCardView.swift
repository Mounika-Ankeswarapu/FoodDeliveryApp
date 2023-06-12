//
//  DetailsCardView.swift
//  FoodDeliveryApp
//
//  Created by Mounika Ankeswarapu on 03/06/23.
//


import SwiftUI

struct DetailCardView: View {
    var fillColor: Color
    @State private var rating = 0
    @EnvironmentObject var viewModel: DetailViewModel
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40.0)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(fillColor)
                .padding(.top, 300)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 20) {
                description
                itemDetail
                ratingSection
//                Spacer()
                priceSummary
            }.padding(.top, 280)
        }
    }

    @ViewBuilder
    var description: some View {
        Text(" Rice Noodles with shrimps,egg,pork, choy,cabbage. Noodles fave or trying something completely new,  we want your tastebuds to be your happy buds. ")
        
            .multilineTextAlignment(.center)
            .font(.caption)
            .padding(.horizontal, 8)
    }

    @ViewBuilder
    var itemDetail: some View {
        VStack(spacing: 12) {
            HStack(alignment: .lastTextBaseline) {
                VStack(alignment: .leading) {
                    Text("Noodles")
                        .font(.title2.bold())

                    Text("300g/530 kcal")
                        .font(.caption)
                }
                Spacer()
                Text("1 portion")
            }
            Divider()
        }.padding(.horizontal, 20)
    }

    @ViewBuilder
    var ratingSection: some View {
        VStack(spacing: 12) {
            HStack {
                Image.logo
                VStack(alignment: .leading) {
                    Text("Chin Club")
                    Text("3.1 km from you")
                        .foregroundColor(.TextColor)
                }
                Spacer()
                RatingStars(rating: $rating)
            }
            Divider()
        }.padding(.horizontal, 20)
    }

    @ViewBuilder
    var priceSummary: some View {
        HStack {
            VStack(alignment: .leading) {
                Group {
                    Text("Price:")
                        +
                        Text(" $9.20")
                        .foregroundColor(.TextColor)
                }
                Text("$7,50")
                    .font(.title.bold())
            }
            Spacer()
            AddToCartButton {
                viewModel.navigateToOrders = true
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 34)
    }
}

struct DetailCardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DetailCardView(fillColor: .white)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.bgColor)
    }
}
