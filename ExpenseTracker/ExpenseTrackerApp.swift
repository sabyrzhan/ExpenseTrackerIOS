//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Sabyrzhan Tynybayev on 26.03.2022.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
