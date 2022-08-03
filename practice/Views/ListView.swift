//
//  ListView.swift
//  practice
//
//  Created by Dongwoo Son on 2022/07/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "first", isCompleted: false),
        ItemModel(title: "second", isCompleted: true)
    ]
    
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("지유용 투두🌝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView()))
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
        
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
} 

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
