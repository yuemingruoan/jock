import SwiftUI

struct ContentView: View {
    // 状态变量：点击次数 & 是否显示提示框
    @State private var clickCount = 0
    @State private var showAlert = false
    @State private var showGift = false
    var body: some View {
        VStack {
            Spacer()
            .navigationTitle("一个闲着没事的人写出的程序")
            Button(action: {
                clickCount += 1       // 点击次数 +1
                if(clickCount == 10){
                    showGift = true//显示惊喜
                }
                else{
                    showAlert = true// 显示提示框
                }
            })
            {
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
        .alert("提示",isPresented: $showAlert) {
            Button("确定", role: .cancel) { }
        }message: {
            Text("你点击了 \(clickCount) 次！")
        }
        .alert("神经",isPresented: $showGift) {
            Button("确定", role: .cancel) { }
        }message:{
            Text("你可真是闲着没事干")
        }
    }
}

#Preview {
    ContentView()
}
