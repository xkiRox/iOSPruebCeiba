//
//  UserView.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import SwiftUI

struct UserView: View {
    @StateObject var viewHelper: UserViewHelper
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            if viewHelper.users.isEmpty {
                ProgressView()
            }
            else {
                ScrollView {
                    ForEach(viewHelper.users, id: \.id) { item in
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
            }
        }
        .background(Color.backgroundColor)
    }
}
