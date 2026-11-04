Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### 使用者影响

CLI 与 `@calcit/procs` 配对正式 **0.34.2**，升级后需重新安装完整精确依赖图、
生成 JS 并完整刷新，不能跨工具链热重载保留旧 Reel 实例。目标为正式 Reel
**0.9.0**、UI **0.14.1**、Respo **0.19.2**、JS-FFI **0.2.10** 与 Markdown
**0.7.1**。Markdown 0.7.1 当前仍为上游候选，尚未发布；当前本地检查使用明确标记的
候选链接，不能当作正式根 Caps strict 已通过。旧 0.7.0 会产生精确依赖冲突，不关闭
strict 或使用 main/hash 绕过；待正式 tag 后重新安装验证。

保留已有 `CursorKey = Tag | String | Number` union，`:states` 的 Bool 等其他 key
仍按原合同拒绝，false/0 状态 payload、原 Map 存档格式及匿名 Enum/Reel 操作入口
保持。不为开放状态伪造有限 union，也不扩张公开 diff API。

textarea 回调现在接收真实 RespoEvent，读取 `:value` 后仍检查 String，缺失/非法
输入在修改状态前报错；根组件构建和实际渲染同处 managed memo frame。两处原
8px 宽度保留。恢复失败保护、HUD、存档 key 和部署路径保持。官方 AST 比较只有
两个业务代码体与两个 namespace import 改变，原 schema、CursorKey、updater
与三项测试断言保持，不放宽门禁或新增 checker。

Reel 保留 `State<Enum,Store>`，公共 updater 接受原 Enum，UI 输入经 Enum 检查后
派发。存档仍输出 Map；原 Map/Struct 输入通过已有 Store 边界恢复。恢复成功后
才注册 beforeunload 保存，解析/解码失败不会覆盖原存档；不吞错、不清空或替换数据。
此流程没有新增定时保存。npm 安装等待一小时，无单包例外。

当前源码只有示例 UI 和 Store updater；历史简介中的 diff 算法仍为 WIP，本迁移
不补写或验证不存在的算法。本轮普通可见 Chrome 使用独立回环来源与合成文本，
实际输入中文/emoji、多行、点击 run 输出当前内容、离页保存及刷新恢复通过，未见
应用 pageerror。未重新验收坏存档保护，不把正常恢复或历史结果当作本次完整证明。

### Workflow

Use `calcit.cirru` and `deps.cirru`; do not restore the retired `compact.cirru`
or `package.cirru`. Generated `js-out/` is not committed.

Use Node 24 and Yarn 4.18.0. Install Calcit 0.34.2 and Caps 0.1.1 separately
(the latter follows [the official Caps installation](https://github.com/calcit-lang/caps)); Corepack/Yarn does not install Caps. Strict dependency installation and the original type/test gates are retained.
Browser and production acceptance remain separate from successful compilation.

Persistence retains the Map archive format and accepts existing Map/Struct
archives through the checked Store boundary. The textarea callback receives a nominal
RespoEvent, checks its value, dispatches one Enum operation and returns Unit. Tag/String/Number cursor paths and state payloads are preserved; other key kinds are rejected. No new test framework or copied COS
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
