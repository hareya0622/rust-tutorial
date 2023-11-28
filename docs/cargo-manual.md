# cargo manual

## 初めに
このマニュアルは *hareya0622/rust-tutorial* 環境での内容となっております。  
そのため他の環境ではコマンドなどが変わる可能性がございますことご了承ください。

## cargo new
下記のようにcargo newで新しいプロジェクトを作成し実行してみてください。
```bash
$ cargo new {project_name}
$ cd project_name/
$ cargo run
```

おそらく以下のエラーが発生するでしょう。
```bash
error: current package believes it's in a workspace when it's not:
current:   /workspace/projects/{project_name}/Cargo.toml
workspace: /workspace/Cargo.toml

this may be fixable by adding `projects/incorrect_code` to the `workspace.members` array of the manifest located at: /workspace/Cargo.toml
Alternatively, to keep it out of the workspace, add the package to the `workspace.exclude` array, or add an empty `[workspace]` table to the package's manifest.
```
このエラーの解消方法は記載されている通り */workspace/cargo.tmol* 内のworkspace.membersに作成したプロジェクトを追加すればよいのです。
```toml
[workspace]
members = [
	"./projects/hello_cargo",
	"./projects/{project_name}" # 追記
]
```
このように追記した後にもう一度
```bash
$ cargo run
```
と実行すれば
```bash
cargo run
    Finished dev [unoptimized + debuginfo] target(s) in 0.0 secs
     Running `target/debug/hello_cargo`
Hello, world!
```
と表示されるはずです。