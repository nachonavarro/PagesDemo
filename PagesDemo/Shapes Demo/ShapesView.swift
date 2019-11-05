//
//  ShapesView.swift
//  PagesDemo
//
//  Created by Nacho Navarro on 04/11/2019.
//  Copyright © 2019 nachonavarro. All rights reserved.
//

import SwiftUI
import Pages

struct ShapesView: View {

    let squareSize: CGFloat = 125

    var body: some View {
        VStack {
            Text("Positioning in Pages")
                .font(.largeTitle)
                .bold()
                .padding(.bottom)
            HStack {
                VStack(spacing: 4) {
                    Text(".topLeading")
                    Pages(alignment: .leading) {
                        CoolCircle()
                            .padding()
                        CoolCircle()
                            .padding()
                    }
                    .frame(width: squareSize, height: squareSize, alignment: .top)
                    .border(Color.green, width: 2)
                }
                VStack(spacing: 4) {
                    Text(".top")
                    Pages {
                        CoolCircle()
                            .padding()
                        CoolCircle()
                            .padding()
                    }
                    .frame(width: squareSize, height: squareSize, alignment: .top)
                    .border(Color.green, width: 2)
                }
            }
            HStack {
                VStack(spacing: 4) {
                    Text(".topTrailing")
                    Pages(alignment: .trailing) {
                        CoolCircle()
                            .padding()
                        CoolCircle()
                            .padding()
                    }
                    .frame(width: squareSize, height: squareSize, alignment: .top)
                    .border(Color.green, width: 2)
                }
                VStack(spacing: 4) {
                    Text(".center")
                    Pages {
                        CoolCircle()
                            .padding()
                        CoolCircle()
                            .padding()
                    }
                    .frame(width: squareSize, height: squareSize)
                    .border(Color.green, width: 2)
                }
            }
            HStack {
                VStack(spacing: 4) {
                    Text(".leading")
                    Pages(alignment: .leading) {
                        CoolCircle()
                            .padding()
                        CoolCircle()
                            .padding()
                    }
                    .frame(width: squareSize, height: squareSize)
                    .border(Color.green, width: 2)
                }
                VStack(spacing: 4) {
                    Text(".trailing")
                    Pages(alignment: .trailing) {
                        CoolCircle()
                            .padding()
                        CoolCircle()
                            .padding()
                    }
                    .frame(width: squareSize, height: squareSize)
                    .border(Color.green, width: 2)
                }
            }
            HStack {
                VStack(spacing: 4) {
                    Text(".bottomLeading")
                    Pages(alignment: .leading) {
                        CoolCircle()
                            .padding()
                        CoolCircle()
                            .padding()
                    }
                    .frame(width: squareSize, height: squareSize, alignment: .bottom)
                    .border(Color.green, width: 2)
                }
                VStack(spacing: 4) {
                    Text(".bottom")
                    Pages {
                        CoolCircle()
                            .padding()
                        CoolCircle()
                            .padding()
                    }
                    .frame(width: squareSize, height: squareSize, alignment: .bottom)
                    .border(Color.green, width: 2)
                }
            }
            VStack(alignment: .leading, spacing: 2) {
                Text("Legend:")
                    .font(.headline)
                HStack {
                    Text("Pages frame")
                    Spacer()
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 20, height: 2)
                }
                HStack {
                    Text("Single page's frame")
                    Spacer()
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 2)
                }
                HStack {
                    Text("Single page's content")
                    Spacer()
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 20, height: 2)
                }
            }
            .padding(.top)
            .frame(width: 250)
            Spacer()
        }
        .padding()
    }
}

private struct CoolCircle: View {

    var body: some View {
        Rectangle()
            .fill(Color.yellow)
            .frame(width: 25, height: 25)
            .padding(10)
            .border(Color.blue, width: 2)
    }
}

let colors = [Color.blue, Color.red, Color.orange, Color.pink, Color.purple]

private func randomColor() -> Color {
    return [Color.blue, Color.red, Color.orange, Color.pink, Color.purple].randomElement()!
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
