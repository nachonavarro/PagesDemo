//
//  AppPreviewView.swift
//  PagesDemo
//
//  Created by Nacho Navarro on 05/11/2019.
//  Copyright © 2019 nachonavarro. All rights reserved.
//

import SwiftUI
import Pages

struct AppPreviewView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Preview")
                .font(.system(size: 22, weight: .bold))
                .padding(.leading)
            ModelPages(["home", "profile", "group", "watch"],
                       spacing: 8,
                       insets: EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16),
                       bounce: true,
                       alignment: .leading) { _, photo in
                        Image("fb-\(photo)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 220)
                            .cornerRadius(6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.secondary, lineWidth: 0.2)
                            )
            }
        }
    }
}

struct AppPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        AppPreviewView()
            .previewLayout(.sizeThatFits)
    }
}
