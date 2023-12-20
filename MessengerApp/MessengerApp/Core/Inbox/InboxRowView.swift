//
//  InboxRowView.swift
//  MessengerApp
//
//  Created by Sonam Sodani on 2023-12-14.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        
                // image, message, date
                HStack(alignment: .top, spacing: 12) {
                    // image
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .foregroundColor(Color(.systemGray))
                    
                    //name and message
                    VStack(alignment: .leading, spacing: 4) {
                        // name
                        Text("Heath Ledger")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        //message
                        Text("Some text message for now that spans more than one line")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
                    }
                    
                    HStack {
                        //Date
                        Text("yesterday")
                        
                        //arrow for next page
                        Image(systemName: "chevron.right")
                    }
                    .font(.footnote)
                    .foregroundStyle(.gray)
                   
                }
                .frame(height: 72)
        
        
    }
}

#Preview {
    InboxRowView()
}
