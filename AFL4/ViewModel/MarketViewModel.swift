import Foundation
import Combine
import UIKit

class MarketViewModel: ObservableObject{
    
    @Published var allCoins: [CoinModel] = []
    @Published var wishListCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        addSubscribers()
    }
    
    func addSubscribers(){
        $searchText.combineLatest(dataService.$allCoins)
            .debounce(for: .seconds(0.2), scheduler: DispatchQueue.main)
            .map(filteredCoins)
            .sink{ [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
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