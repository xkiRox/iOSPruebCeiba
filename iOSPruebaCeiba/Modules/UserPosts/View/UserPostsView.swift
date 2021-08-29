//
//  UserPostsView.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import SwiftUI

struct UserPostsView: View {
    @ObservedObject var viewHelper: UserPostsViewHelper
    
    var body: some View {
        NavigationView {
            if viewHelper.posts.isEmpty {
                ProgressView()
            }
            else {
                ScrollView {
                    Text(viewHelper.name)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.titleColor)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                    ForEach(viewHelper.posts, id: \.id) { item in
                            VStack(alignment: .leading) {
                                VStack(alignment: .leading) {
                                    Text("Titulo")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.titleColor)
                                    Text(item.title)
                                }
                                VStack {
                                    Text("Descripción")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.titleColor)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text(item.body)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                .padding(.top, 10)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .padding()
                            .background(Color.cardsColor)
                            .clipShape(RoundedRectangle(cornerRadius: 2))
                            .navigationBarTitle("Publicaciones", displayMode: .inline)
                            .navigationBarItems(leading: Button(action: {
                                viewHelper.dismiss(animated: true, completion: nil)
                            }) {
                                Image(systemName: "arrow.left")
                            })
                        }
                        .padding(10)
                        .shadow(radius: 5)
                        Divider()
                }
            }
        }
    }
}
