//
//  LoginPageModel.swift
//  E-Commerce
//
//  Created by Nguyen Quang Ha on 11/10/2022.
//

import SwiftUI

class LoginPageModel: ObservableObject {
    
    //Login
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    //Register
    @Published var registerUser: Bool = false
    @Published var re_Enter_Password: String = ""
    @Published var showReEnterPassword: Bool = false
    
    @AppStorage("log_Status") var log_Status: Bool = false
    //Login Call
    func login() {
        withAnimation {
            log_Status = true
        }
    }
    
    func register() {
        withAnimation {
            log_Status = true
        }
    }
    
    func forgotPassword() {
        
    }
}
