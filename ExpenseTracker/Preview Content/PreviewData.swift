//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Sabyrzhan Tynybayev on 26.03.2022.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "01/24/2022", institution: "Visa", account: "Visa Account", merchant: "Apple", amount: 11.50, type: "debit", categoryId: 100, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
