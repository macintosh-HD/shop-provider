public protocol UniversalMarket {
    typealias ShopKey = WritableKeyPath<Self, String>
    static var shopKey: ShopKey { get }
    
    typealias MarketIDKey = WritableKeyPath<Self, String>
    static var marketIDKey: MarketIDKey { get }
    
    typealias MarketNameKey = WritableKeyPath<Self, String>
    static var marketNameKey: MarketNameKey { get }
    
    typealias MarketAddressKey = WritableKeyPath<Self, String>
    static var marketAddressKey: MarketAddressKey { get }
}
