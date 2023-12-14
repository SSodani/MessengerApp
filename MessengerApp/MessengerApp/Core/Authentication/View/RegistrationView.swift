//
//  RegistrationView.swift
//  MessengerApp
//
//  Created by Sonam Sodani on 2023-12-14.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var email = ""
    @State var fullname = ""
    @State var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
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
                
                TextField("Enter your full name", text: $fullname)
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
            
            //Sign up
            Button(action: {
                // TODO handle sign up
                print("Handle Sign up")
            }, label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
            })
            Spacer()
            Divider()
            //Sign up
            Button(action: {
                dismiss()
            }, label: {
                HStack(spacing:3) {
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                    
                }
                .font(.footnote)
            })
            .padding(.top)
            
        }
            .padding(.vertical)
        
    }
}

#Preview {
    RegistrationView()
}
