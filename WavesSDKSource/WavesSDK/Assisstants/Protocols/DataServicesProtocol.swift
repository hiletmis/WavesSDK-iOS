//
//  DataServicesProtocol.swift
//  Alamofire
//
//  Created by rprokofev on 28/05/2019.
//

import Foundation

public protocol DataServicesProtocol: ServicesProtocol {
    
    var aliasDataService: AliasDataServiceProtocol { get }
    var assetsDataService: AssetsDataServiceProtocol { get }
    var candlesDataService: CandlesDataServiceProtocol { get }
    var pairsPriceDataService: PairsPriceDataServiceProtocol { get }
    var transactionsDataService: TransactionsDataServiceProtocol { get }
}
