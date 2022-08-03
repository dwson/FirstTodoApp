//
//  NoItemsView.swift
//  practice
//
//  Created by Dongwoo Son on 2022/07/28.
//

import SwiftUI

struct NoItemsView: View {
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                Text("암것도 없다!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("내용좀 넣어봐")
                    .multilineTextAlignment(.center)
                    .padding(100)
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("넣기🫠")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height:55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? Color.red : Color.accentColor)
                        .cornerRadius(10)
                    
                })
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){ withAnimation(
            Animation.easeInOut(duration: 2.0)
                .repeatForever()
        ){
            animate.toggle()
        }
    }
}
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
        }
    }
}
