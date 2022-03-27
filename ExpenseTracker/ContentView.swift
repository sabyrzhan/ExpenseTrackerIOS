//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Sabyrzhan Tynybayev on 26.03.2022.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    var demoData: [Double] = [8,2,4,6,12,8,2]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    // MARK: Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    
                    // MARK: Chart
                    let chartStyle = ChartStyle(backgroundColor: Color.systemBackground, accentColor: Color.accentColor, gradientColor: GradientColor(start: Color.icon.opacity(0.4), end: Color.icon), textColor: Color.text, legendTextColor: Color.text, dropShadowColor: Color.primary)

                    LineChartView(data: demoData, title: "$900", style: chartStyle, form: ChartForm.extraLarge, rateValue: 0)
                        .frame(height: 300)
                    
                    // MARK: Transaction list
                    RecentTransactionList()
                }
                .padding()
                .frame(maxWidth: .infinity)
                
            }
            .background(Color.backgound)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // MARK: Notification icon
                ToolbarItem {
                    Image(systemName: "bell.badge")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.icon, .primary)
                }
            }
            
        }.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
        .environmentObject(transactionListVM)
    }
}
