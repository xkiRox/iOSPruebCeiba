//
//  UserView.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import SwiftUI

struct UserView: View {
    @StateObject var viewHelper: UserViewHelper
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            if viewHelper.users.isEmpty {
                ProgressView()
            }
            else {
                ScrollView {
                    SearchBarView(text: $searchText, placeholder: "Buscar Usuario")
                    let filterName = viewHelper.users.filter {
                        self.searchText.isEmpty ? true : $0.name.lowercased().contains(searchText.lowercased())
                    }
                    if filterName.count != 0 {
                        ForEach(filterName, id: \.id) { item in
                            VStack(alignment: .leading) {
                                Text(item.name)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.titleColor)
                                HStack {
                                    Image(systemName: "phone.fill")
                                        .foregroundColor(.titleColor)
                                    Text(item.phone)
                                }
                                HStack {
                                    Image(systemName: "envelope.fill")
                                        .foregroundColor(.titleColor)
                                    Text(item.email)
                                }
                                Text("VER PUBLICACIONES")
                                    .foregroundColor(.titleColor)
                                    .fontWeight(.bold)
                                    .padding(.top, 20)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                            }
                            .onTapGesture {
                                //TODO - Event Click
                            }
                            .padding()
                            .background(Color.cardsColor)
                            .clipShape(RoundedRectangle(cornerRadius: 2))
                            .navigationTitle("Prueba de Ingreso")
                        }
                        .padding(10)
                        .shadow(radius: 5)
                        Divider()
                    }
                    else {
                        VStack(alignment: .center, spacing: 250) {
                            Spacer()
                            Text("Lista vacia")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.titleColor)
                        }
                    }
                }
            }
        }
        .background(Color.backgroundColor)
    }
}
