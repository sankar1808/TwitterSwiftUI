//
//  MessageInputView.swift
//  TwitterSwiftUI
//
//  Created by Sankaranarayana Settyvari on 21/10/23.
//

import SwiftUI

struct MessageInputView: View {
    
    @Binding var messageText: String
    
    var body: some View {
        HStack {
            TextField("Message", text: $messageText)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(minHeight: 30)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Send")
            })
        }
    }
}

#Preview {
    MessageInputView(messageText: .constant("Message.."))
}
