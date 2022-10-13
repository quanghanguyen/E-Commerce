//
//  MoreProductsView.swift
//  E-Commerce
//
//  Created by Nguyen Quang Ha on 12/10/2022.
//

import SwiftUI

struct MoreProductsView: View {
    var body: some View {
        VStack {
            Text("More Product")
                .font(.custom(customFont, size: 24).bold())
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color("HomeBG").ignoresSafeArea())
    }
}

struct MoreProductsView_Previews: PreviewProvider {
    static var previews: some View {
        MoreProductsView()
            .previewDevice("iPhone 12 Pro Max")
        
        MoreProductsView()
            .previewDevice("iPhone 8")
    }
}
