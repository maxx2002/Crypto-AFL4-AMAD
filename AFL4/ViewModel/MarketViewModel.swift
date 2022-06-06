import Foundation
import Combine
import UIKit

class MarketViewModel: ObservableObject{
    
    @Published var statistics: [StatisticModel] = []
    
    @Published var allCoins: [CoinModel] = []
    @Published var wishlistCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let coinDataService = CoinDataService()
    private let marketDataService = MarketDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        addSubscribers()
    }
    
    func addSubscribers(){
        $searchText.combineLatest(coinDataService.$allCoins)
            .debounce(for: .seconds(0.2), scheduler: DispatchQueue.main)
            .map(filteredCoins)
            .sink{ [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
        
        marketDataService.$marketData
            .map { marketDataModel -> [StatisticModel] in
                var stats: [StatisticModel] = []
                
                guard let data = marketDataModel else {
                    return stats
                }
                
                let marketCap = StatisticModel(title: "Market Cap", value: data.marketCap, percentageChange: data.marketCapChangePercentage24HUsd)
                
                let volume = StatisticModel(title: "24H Volume", value: data.volume)
                
                let btcDominance = StatisticModel(title: "BTC Dominance", value: data.btcDominance)
                
                stats.append(contentsOf: [
                    marketCap,
                    volume,
                    btcDominance
                ])
                
                return stats
            }
            .sink{ [weak self] (returnedStats) in
                   self?.statistics = returnedStats
            }
            .store(in: &cancellables)

    }
    
    private func filteredCoins(text: String, coins: [CoinModel]) -> [CoinModel] {
        guard !text.isEmpty else {
            return coins
        }
        
        let lowercasedText = text.lowercased()
        
        return coins.filter{(coin) -> Bool in
            return coin.name.lowercased().contains(lowercasedText) ||
            coin.symbol.lowercased().contains(lowercasedText)
        }
    }

}
