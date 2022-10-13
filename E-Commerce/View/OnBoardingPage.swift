//
//  OnBoardingPage.swift
//  E-Commerce
//
//  Created by Nguyen Quang Ha on 11/10/2022.
//

import SwiftUI

let customFont = "Raleway-Regular"

struct OnBoardingPage: View {
    //Show Login Page
    @State var showLoginPage: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            Text("Find your\nGadget")
                .font(.custom(customFont, size: 55))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Image("OnBoardingImage_2")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button {
                withAnimation{
                    showLoginPage = true
                }
            } label: {
                Text("Get Started")
                    .font(.custom(customFont, size: 18))
                    .fontWeight(.semibold)
                    .padding(.vertical, 18)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1),
                            radius: 5, x: 5, y: 5)
                    .foregroundColor(Color("Main"))
            }
            .padding(.horizontal, 30)
            // Add dome adjusments only for larger displays
            .offset(y: getRect().height < 750 ? 20 : 40)
            
            Spacer()
        }
        .padding()
        .padding(.top, getRect().height < 750 ? 0 : 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color("Main")
        )
        .overlay(
            Group {
                if showLoginPage {
                    LoginPage().transition(.move(edge: .trailing))
                }
            })
    }
}

struct OnBoardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPage()
            .previewDevice("iPhone 12 Pro Max")
        
        OnBoardingPage()
            .previewDevice("iPhone 8")
    }
}

// extending view
extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
