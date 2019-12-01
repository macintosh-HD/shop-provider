import Vapor
import ReweProvider

public struct ShopProvider: Provider {
    public init() {}
    
    public func didBoot(_ container: Container) throws -> Future<Void> {
        return .done(on: container)
    }
    
    public func register(_ services: inout Services) throws {
        try services.register(ReweProvider())
        
        services.register { (container) -> (ShopClient) in
            let httpClient = try container.make(Client.self)
            return ShopClient(httpClient: httpClient)
        }
    }
}
