import Vapor
import ReweProvider

public struct ShopClient: Service {
    let httpClient: Client
    
    public init(httpClient: Client) {
        self.httpClient = httpClient
    }
    
    public func fetchMarketsFor(postalCode: String, shop: Shop) -> Future<[Market]> {
        switch shop {
        case .rewe:
            let reweClient = httpClient.make(ReweClient.self)
            
            return try reweClient.fetchMarketsFor(postalCode: postalCode)
        }
    }
    
    public func fetchProductsFor(searchTerm product: String, marketID: String, shop: Shop) -> Future<[Product]> {
        switch shop {
        case .rewe:
            let reweClient = httpClient.make(ReweClient.self)
            
            return try reweClient.searchProductsFor()
        }
    }
}
