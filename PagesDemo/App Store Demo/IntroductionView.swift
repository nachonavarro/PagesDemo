//
//  IntroductionView.swift
//  PagesDemo
//
//  Created by Nacho Navarro on 05/11/2019.
//  Copyright © 2019 nachonavarro. All rights reserved.
//

import SwiftUI

struct IntroductionView: View {

    var ratings: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("3.1")
                    .fixedSize(horizontal: true, vertical: false)
                    .font(.system(size: 22, weight: .medium))
                    .foregroundColor(.secondary)
                Image(systemName: "star.fill")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                Image(systemName: "star.fill")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                Image(systemName: "star.fill")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                Image(systemName: "star")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
                Image(systemName: "star")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
            }
            Text("364k Ratings")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
    }

    var position: some View {
        VStack {
            Text("#2")
                .font(.system(size: 22, weight: .medium))
                .foregroundColor(.secondary)
            Text("Social Networking")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
    }

    var age: some View {
        VStack {
            Text("12+")
                .font(.system(size: 22, weight: .medium))
                .foregroundColor(.secondary)
            Text("Age")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            HStack(alignment: .bottom, spacing: 16) {
                Image("facebook")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .cornerRadius(30)
                VStack(alignment: .leading) {
                    VStack {
                        VStack(alignment: .leading) {
                            Text("Facebook")
                                .font(.system(size: 22, weight: .semibold))
                            Text("Facebook, Inc.")
                                .font(.footnote)
                                .foregroundColor(.secondary)
                        }
                    }
                    Spacer()
                    HStack {
                        Button(action: {}) {
                            Text("GET")
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 6)
                        }
                        .background(Color.blue)
                        .cornerRadius(100)
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 20))
                        }
                    }
                }.frame(height: 120)
            }
            HStack {
                ratings
                Spacer()
                position
                Spacer()
                age
            }
        }
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
            .previewLayout(.sizeThatFits)
    }
}
