import FluentSQLite
import Vapor

final class HotWord: SQLiteModel {
    ///
    var id: Int?
    
    ///
    var title: String
    
    ///
    var likesCount: Int
    
    ///
    var didUserLike: Bool
    
    /// 
    init(id: Int? = nil, title: String, likesCount: Int, didUserLike: Bool) {
        self.id = id
        self.title = title
        self.likesCount = likesCount
        self.didUserLike = didUserLike
    }
}

extension HotWord: Migration { }

extension HotWord: Content { }

extension HotWord: Parameter { }
