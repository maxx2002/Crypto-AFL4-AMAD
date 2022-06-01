// This file was generated from JSON Schema using codebeautify, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome3 = try Welcome3(json)

import Foundation

// MARK: - Welcome3
struct Welcome3 {
    let id, symbol, name: String
    let assetPlatformID: NSNull
    let platforms: Platforms
    let blockTimeInMinutes: Int
    let hashingAlgorithm: String
    let categories: [String]
    let publicNotice: NSNull
    let additionalNotices: [Any?]
    let welcome3Description: Description
    let links: Links
    let image: Image
    let countryOrigin, genesisDate: String
    let sentimentVotesUpPercentage, sentimentVotesDownPercentage: Double
    let marketCapRank, coingeckoRank: Int
    let coingeckoScore, developerScore, communityScore, liquidityScore: Double
    let publicInterestScore: Double
    let marketData: MarketData
    let developerData: DeveloperData
    let publicInterestStats: PublicInterestStats
    let statusUpdates: [Any?]
    let lastUpdated: String
}

// MARK: - DeveloperData
struct DeveloperData {
    let forks, stars, subscribers, totalIssues: Int
    let closedIssues, pullRequestsMerged, pullRequestContributors: Int
    let codeAdditionsDeletions4_Weeks: CodeAdditionsDeletions4_Weeks
    let commitCount4_Weeks: Int
    let last4_WeeksCommitActivitySeries: [Int]
}

// MARK: - CodeAdditionsDeletions4_Weeks
struct CodeAdditionsDeletions4_Weeks {
    let additions, deletions: Int
}

// MARK: - Image
struct Image {
    let thumb, small, large: String
}

// MARK: - Links
struct Links {
    let homepage: [String]
    let blockchainSite, officialForumURL: [String]
    let chatURL, announcementURL: [String]
    let twitterScreenName, facebookUsername: String
    let bitcointalkThreadIdentifier: NSNull
    let telegramChannelIdentifier: String
    let subredditURL: String
    let reposURL: ReposURL
}

// MARK: - ReposURL
struct ReposURL {
    let github: [String]
    let bitbucket: [Any?]
}

// MARK: - MarketData
struct MarketData {
    let currentPrice: [String: Double]
    let totalValueLocked, mcapToTvlRatio, fdvToTvlRatio, roi: NSNull
    let ath, athChangePercentage: [String: Double]
    let athDate: [String: String]
    let atl, atlChangePercentage: [String: Double]
    let atlDate: [String: String]
    let marketCap: [String: Double]
    let marketCapRank: Int
    let fullyDilutedValuation, totalVolume, high24H, low24H: [String: Double]
    let priceChange24H, priceChangePercentage24H, priceChangePercentage7D, priceChangePercentage14D: Double
    let priceChangePercentage30D, priceChangePercentage60D, priceChangePercentage200D, priceChangePercentage1Y: Double
    let marketCapChange24H, marketCapChangePercentage24H: Double
    let priceChange24HInCurrency, priceChangePercentage1HInCurrency, priceChangePercentage24HInCurrency, priceChangePercentage7DInCurrency: [String: Double]
    let priceChangePercentage14DInCurrency, priceChangePercentage30DInCurrency, priceChangePercentage60DInCurrency, priceChangePercentage200DInCurrency: [String: Double]
    let priceChangePercentage1YInCurrency, marketCapChange24HInCurrency, marketCapChangePercentage24HInCurrency: [String: Double]
    let totalSupply, maxSupply, circulatingSupply: Double
    let lastUpdated: String
}

// MARK: - Platforms
struct Platforms {
    let empty: String
}

// MARK: - PublicInterestStats
struct PublicInterestStats {
    let alexaRank: Int
    let bingMatches: NSNull
}

// MARK: - Description
struct Description {
    let en: String
}
