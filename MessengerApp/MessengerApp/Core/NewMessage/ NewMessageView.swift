//
//   NewMessageView.swift
//  MessengerApp
//
//  Created by Sonam Sodani on 2023-12-16.
//

import SwiftUI

struct _NewMessageView: View {
    @State private var searchText = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ScrollView {
                 TextField("To: ", text: $searchText)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                
                Text("CONTACTS")
                
                 
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .foregroundColor(.black)
                }
        }
        }
    }
}

#Preview {
    NavigationStack {
        _NewMessageView()
    }
   
}
 
