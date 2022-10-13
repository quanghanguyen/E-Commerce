//
//  MainPage.swift
//  E-Commerce
//
//  Created by Nguyen Quang Ha on 12/10/2022.
//

import SwiftUI

struct MainPage: View {
    //CurrentTab
    @State var currentTab: Tab = .Home
    // Hiding TabBar
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        VStack(spacing: 0) {
            //Tab Bar view
            TabView(selection: $currentTab) {
                Home()
                    .tag(Tab.Home)
                
                Text("Liked")
                    .tag(Tab.Liked)
                
                Text("Profile")
                    .tag(Tab.Profile)
                
                Text("Cart")
                    .tag(Tab.Cart)
            }
            
            // Custom TabBar
            HStack(spacing: 0) {
                ForEach(Tab.allCases, id: \.self) {tab in
                    Button {} label: {
                        Image(tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        //add shadow
                            .background(
                                Color("Main")
                                    .opacity(0.1)
                                    .cornerRadius(5)
                                    .padding(-7)
                                    .blur(radius: 5)
                                    .opacity(currentTab == tab ? 1 : 0)
                            )
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ?
                                            Color("Main") :
                                                Color.black.opacity(0.3))
                    }
                }
            }
            .padding([.horizontal, .top])
            .padding(.bottom, 10)
        }
        .background(Color("HomeBG").ignoresSafeArea())
    }
}


struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
            .previewDevice("iPhone 12 Pro Max")
        
        MainPage()
            .previewDevice("iPhone 8")
    }
}

//Tab case
enum Tab: String, CaseIterable {
    case Home = "Home"
    case Liked = "Liked"
    case Profile = "Profile"
    case Cart = "Cart"
}
