//
//  AddView.swift
//  practice
//
//  Created by Dongwoo Son on 2022/07/25.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("type something", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(red: 0.3, green: 0.3, blue: 0.3, opacity: 0.15))
                    .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color(.white))
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
                
            }
            .padding(14)
        }.navigationTitle("Add something")
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}
