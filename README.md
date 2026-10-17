Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### 0.30.1 迁移：用户影响

当前候选配对 Calcit/procs `0.30.1-alpha.4`（预发布版），模块使用正式
Respo `0.16.122`、Reel `0.6.39`、UI `0.7.41`、Markdown `0.4.56`、JS-FFI `0.2.3`。
升级后需要完整刷新，不能跨热重载保留原 Map Reel 实例。

公开 updater 继续接受原 Enum 操作；内容更新、游标更新、Map/Struct 存档恢复和未知操作
保持原分支。非法 content/cursor 在实际使用处由已有 decoder 拒绝，不强转或补业务默认值。
Reel 内部改为 `State<Enum,Store>`，记录保留真实操作和 Store，持久化仍输出原 Map 存档，
存储 key、生产 COS 前缀及服务器路径不变。UI 的 Dynamic 回调输入先检查为 Enum，
不把开放入口伪装成更窄的函数签名，也不额外添加操作载体或适配框架。

当前 Snapshot 只有示例工作流 UI 与 Store updater；历史简介中的 diff 算法仍是 WIP，
本迁移没有补写或声称已经验证不存在的算法，也不据此发布模块版本。

本地完整 strict、JS/Vite 构建和原有 3 个业务测试通过，测试文件与断言不变。
浏览器真实输入、run 按钮读 Store、刷新后存档恢复通过，无 warning/error；
实际 typed Reel 的 Op identity、回放、混合游标和未知操作保留 Store 也已验证。
构建仍有原包体超过 500 kB 的提示，不通过抬高阈值隐藏。干净 Caps 安装与远端
验收以 PR Actions 为准；本地未执行 Caps，不宣称 CDN 公共校验已通过。

### Workflow

Use `calcit.cirru` and `deps.cirru`; do not restore the retired `compact.cirru`
or `package.cirru`. Generated `js-out/` is not committed.

Use Node 24 and Yarn 4.18.0. Strict dependency installation and full application
acceptance must pass before this candidate is treated as a completed migration.

Persistence retains the Map archive format and accepts existing Map/Struct
archives through the checked Store boundary. The textarea callback receives the
Respo event Map, dispatches one Enum operation and returns Unit. Existing
state and diff behavior are preserved; no new test framework or copied COS
verification script is introduced.

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only
VITE_BASE_URL=https://cos-sh.tiye.me/mvc-works/text-diff/ yarn build
node --test scripts/upgrade.test.mjs
```

COS verification uses the action's built-in `public-base-url` setting at exact
formal v1.2.0. Action tags resolve to the previously reviewed commits; their
movability is accepted by the user. Production paths, server deployment
directory and shared fonts/icons are unchanged. PR paths use
`mvc-works/text-diff/pr/<number>/<run-id>/<attempt>/`; PR and production upload
queues are separate, and stale production commits cannot overwrite current
resources. Canonical formatting and strict public-definition checks replace
the old migration quality budget. No copied upload checker, new test framework,
or compiler fix/proof rule is introduced. The known CDN certificate/public
access problem is not bypassed; upload success is not public verification.

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
