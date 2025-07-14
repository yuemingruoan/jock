//
//  ContentView.swift
//  LearnSwift
//
//  Created by 时雨 on 2025/7/14.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // 主页标签页
            GameView()
                .tabItem {
                    Text("主页")
                }
            
            // 可以添加其他标签页
            SettingView()
                .tabItem {
                    Text("设置")
                }
        }
    }
}

#Preview {
    ContentView()
}
