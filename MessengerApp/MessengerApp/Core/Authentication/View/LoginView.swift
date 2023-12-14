//
//  LoginView.swift
//  MessengerApp
//
//  Created by Sonam Sodani on 2023-12-13.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                /* to centre view, added spacer on start and end.
                    It sandwich everything to middle */
                Spacer()
                // Logo Image
                Image("app-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160, height: 160)
                
                // Text Fields
                /* we have separate vstack here to custom spacing between
                these two text fields */
                VStack {
                    TextField("Enter your email", text: $email)
                        .padding(12)
                        .font(.subheadline)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 12)
                    
                    TextField("Enter your password",text: $password)
                        .padding(12)
                        .font(.subheadline)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 12)
                }
                
                // Forgot Password
                Button(action: {
                    print("forgot password")
                }, label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .cornerRadius(10)
                    
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                //Login
                Button(action: {
                    // TODO handle login
                    print("Handle login")
                }, label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360,height: 44)
                        .background(Color(.systemBlue))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                })
                .padding(.vertical)
                  
                 
                
                //Divider with text
                HStack() {
                    Rectangle()
                        .frame(width:(UIScreen.main.bounds.width)/2 - 40, height: 0.5)
                        
                        
                    Text("OR")
                        .font(.footnote)
                        
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width)/2 - 40, height: 0.5)
                        
                }
                .foregroundColor(.gray)
                //Facebook Login
                HStack {
                    Image("facebook-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50,height: 50)
                       
                    
                    Button(action: {
                        // TODO handel facebook login
                        print("handle facebook login")
                    }, label: {
                        Text("Continue with Facebook")
                            .fontWeight(.semibold)
                            .font(.footnote)
                            .foregroundStyle(Color(.systemBlue))
                    })
                }
                .padding(.top)
                 Spacer()
                 Divider()
                
                
                //Sign up
                NavigationLink {
                   RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing:3) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                        
                    }
                    .font(.footnote)
                     
                }
                .padding(.top)
                
                
                
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
