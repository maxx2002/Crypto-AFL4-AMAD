//
//  PreviewProvider.swift
//  AFL4
//
//  Created by Macbook Pro on 04/06/22.
//

import Foundation
import SwiftUI

extension PreviewProvider{
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview{
    static let instance = DeveloperPreview()
    private init() {}
    
    let coin = CoinModel(
        id  :   "bitcoin"  ,
        symbol  :   "btc"  ,
        name  :   "Bitcoin"  ,
        image  :   "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579"  ,
        currentPrice  : 29792,
        marketCap  : 567646144005,
        marketCapRank  : 1,
        fullyDilutedValuation  : 625499058260,
        totalVolume  : 20554937804,
        high24H  : 30473,
        low24H  : 29400,
        priceChange24H  : -645.137826130398,
        priceChangePercentage24H  : -2.11957,
        marketCapChange24H  : -13490692792.661377,
        marketCapChangePercentage24H  : -2.32143,
        circulatingSupply  : 19057693,
        totalSupply  : 21000000,
        maxSupply  : 21000000,
        ath  : 69045,
        athChangePercentage  : -56.86035,
        athDate  :   "2021-11-10T14:24:11.849Z"  ,
        atl  : 67.81,
        atlChangePercentage  : 43825.83498,
        atlDate  :   "2013-07-06T00:00:00.000Z"  ,
        lastUpdated  :   "2022-06-04T08:46:00.541Z"  ,
        sparklineIn7D  : SparklineIn7D(price  : [
               28887.334225062426,
               28888.104364964427,
               28895.378956149627,
               28862.654696467438,
               28829.13875063057,
               28833.516309187173,
               28877.91569285589,
               28993.96251520225,
               29094.581376072983,
               29006.51547707013,
               29037.074541372673,
               28981.66236833065,
               28898.439972588283,
               29003.81546773665,
               29038.935570579066,
               29011.337285452133,
               29061.88816390439,
               29018.734517289402,
               29088.236452817226,
               29040.921368496478,
               28965.490000870086,
               28943.20514893756,
               29011.715925045082,
               29000.473983361644,
               29057.875283109217,
               29083.57135465299,
               29033.787543462175,
               29128.788675474305,
               29030.86342052809,
               29173.180463833793,
               29252.97032699208,
               29374.856142692417,
               29382.763047276745,
               29357.405417998314,
               29259.238701159113,
               29309.816437854766,
               29284.618648878626,
               29218.596404076914,
               29148.243526932234,
               29182.572516074466,
               29263.618966611924,
               29475.671234358913,
               29492.503214953642,
               29360.436790571424,
               29690.567324848435,
               30223.04264752144,
               30358.108854119004,
               30340.02971964249,
               30434.618489637003,
               30708.176190472528,
               30662.71909350132,
               30756.010678597333,
               30722.672335208183,
               30620.778320640078,
               30689.364407804085,
               30543.557711575824,
               30491.839921722476,
               30469.446528119446,
               30641.644157734732,
               30627.26728114365,
               30727.151701036102,
               30711.22782546968,
               30675.071154599187,
               31233.103946988624,
               31735.16076449612,
               31720.965572194695,
               31740.94072516695,
               31590.69578982399,
               31565.29066595667,
               31676.601747883113,
               31727.847774432157,
               31719.477119965384,
               31702.43900981711,
               31511.547050167363,
               31585.668444076753,
               31663.527762322694,
               31545.550469514776,
               31650.838373027826,
               31785.404870081464,
               31576.510505366634,
               31484.74810010492,
               31680.985963941817,
               32009.049390699616,
               32206.261553889617,
               32061.905172125946,
               31662.02376438401,
               31658.068303844153,
               31780.36666074413,
               31753.17423306564,
               31858.2107678198,
               31813.83060205969,
               31962.818220859575,
               31931.70911576771,
               31825.51425719078,
               31626.851970459407,
               31581.119913392085,
               31617.072973455393,
               31611.5094124847,
               31530.20810136762,
               31646.444279335676,
               31696.146771985772,
               31577.563661868124,
               31574.530663911097,
               31754.158452446623,
               31806.38826123828,
               31232.8094797136,
               30815.178709428124,
               30442.031183728213,
               30155.91451908987,
               30273.275884126182,
               30233.963431084034,
               29716.543458860087,
               29676.064111348973,
               29747.61453942649,
               29822.0722900913,
               29716.147918809107,
               29836.489897611857,
               29826.16891954389,
               29747.92696289637,
               29816.849605545012,
               29883.87978821354,
               29922.933011746394,
               29990.498230055488,
               29960.950636345005,
               29917.64578832305,
               30049.05622324846,
               30192.654823029014,
               30113.701016503393,
               29884.131130481448,
               29973.88361259791,
               30273.96128251687,
               30287.655572977405,
               30225.458436268458,
               30214.3114139195,
               30268.333153924184,
               30292.6718180732,
               30356.560544223827,
               30516.490648805055,
               30481.013996026013,
               30442.600466509168,
               30607.041608668525,
               30558.059434238643,
               30510.820736211568,
               30453.405170694747,
               30560.89656518738,
               30439.39852535882,
               30456.59220939045,
               30450.94248546586,
               30252.03688376298,
               29864.505025286606,
               29772.548626165146,
               29584.998497413177,
               29699.7807788456,
               29479.74284042521,
               29521.956998194808,
               29574.43736989577,
               29532.45329310963,
               29562.090991487643,
               29607.213505024767,
               29689.24629481384,
               29821.873913200285,
               29730.029167670673,
               29714.143487149733,
               29725.234606257076,
               29609.178004971825,
               29578.148143603947,
               29581.420758749617,
               29732.10262479593
             ]),
        priceChangePercentage24HInCurrency  : 0.2659835042120154,
        currentHoldings: 1.5
    )
}
