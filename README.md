# RouterTest

UserListとUserDetailの実装の依存関係をなくしたい。

|UserList|UserDetail|
|---|---|
|![Simulator Screen Shot - iPhone 11 Pro Max - 2020-03-31 at 00 26 32](https://user-images.githubusercontent.com/15953027/77930880-6291fa80-72e6-11ea-8523-26648065583c.png)|![Simulator Screen Shot - iPhone 11 Pro Max - 2020-03-31 at 00 26 35](https://user-images.githubusercontent.com/15953027/77930896-66258180-72e6-11ea-9d31-a62f828cce56.png)|


## 概要

`UserDetail` の `Wireframe(protocol)` を作りUserListはこのUserDetailWireframeに依存するようにする

```swift
protocol UserDetailWireframe {
    func generateView(user: User) -> AnyView
}
```

### DI部分

```swift
let contentView = UserListView(
    userDetailWireframe: UserDetailRouter()
)
```
