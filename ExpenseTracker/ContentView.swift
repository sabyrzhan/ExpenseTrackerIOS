//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Sabyrzhan Tynybayev on 26.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    // MARK: Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    
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
