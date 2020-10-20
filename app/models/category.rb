class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: "選択" }, { id: 2, name: "食事"},
    { id: 3, name: "睡眠" }, { id: 4, name: "投資"},
    { id: 5, name: "リーダーシップ" }, { id: 6, name: "ロジカルシンキング"} ,
    { id: 7, name: "心理学" }, { id: 8, name: "脳科学" },
    { id: 9, name: "ビジネス" }, { id: 10, name: "子育て" }
  ]
end
