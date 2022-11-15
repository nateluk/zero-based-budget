// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI
import ZeroBasedBudget

public class GetAccountsQuery: GraphQLQuery {
  public static let operationName: String = "GetAccounts"
  public static let document: DocumentType = .notPersisted(
    definition: .init(
      """
      query GetAccounts {
        accounts {
          __typename
          id
          title
          amount
        }
      }
      """
    ))

  public init() {}

  public struct Data: ZeroBasedBudget.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ParentType { ZeroBasedBudget.Objects.Query_root }
    public static var __selections: [Selection] { [
      .field("accounts", [Account].self),
    ] }

    /// fetch data from the table: "accounts"
    public var accounts: [Account] { __data["accounts"] }

    /// Account
    ///
    /// Parent Type: `Accounts`
    public struct Account: ZeroBasedBudget.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ParentType { ZeroBasedBudget.Objects.Accounts }
      public static var __selections: [Selection] { [
        .field("id", ZeroBasedBudget.Uuid.self),
        .field("title", String.self),
        .field("amount", ZeroBasedBudget.Float8.self),
      ] }

      public var id: ZeroBasedBudget.Uuid { __data["id"] }
      public var title: String { __data["title"] }
      public var amount: ZeroBasedBudget.Float8 { __data["amount"] }
    }
  }
}
