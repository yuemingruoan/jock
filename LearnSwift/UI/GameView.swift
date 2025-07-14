//
//  GameView.swift
//  LearnSwift
//
//  Created by 时雨 on 2025/7/14.
//

import SwiftUI

struct GameView: View {
    @State private var clickCount = 0
    @State private var showAlert = false
    @State private var showGift = false
    var body: some View {

            VStack {
                Spacer()
                
                Button(action: {
                    clickCount += 1
                    if clickCount == 10 {
                        showGift = true
                    } else {
                        showAlert = true
                    }
                }) {
                    Text("点我！")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .frame(minWidth: 200)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                Spacer()
            }
        .alert("提示", isPresented: $showAlert) {
            Button("确定", role: .cancel) { }
        } message: {
            Text("你点击了 \(clickCount) 次！")
        }
        .alert("神经", isPresented: $showGift) {
            Button("确定", role: .cancel) { }
        } message: {
            Text("你可真是闲着没事干")
        }
    }

}
