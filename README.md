Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### 使用者影响

CLI 与 `@calcit/procs` 配对正式 **0.32.1**，升级后需重新安装整张依赖图、
生成 JS 并完整刷新，不能跨工具链热重载保留旧 Reel 实例。
依赖为已发布 Reel **0.7.0-alpha.5**、Markdown **0.5.0-alpha.5**、UI **0.9.0**、
Respo **0.17.1** 和 JS-FFI **0.2.9**；两项仍为 alpha，不宣称整图全部稳定。

官方工具转换 4 处旧类型写法，17 个定义 schema 保持；当前结构化视图与此前
已审 0.32.0 候选一致。原开放 Enum 派发、Map 存档、恢复失败保护、HUD 和部署路径
不变，不新增算法、强转、类型预算或测试脚本。Caps strict/toolchain 使用真实发布图。
全部定义、完整 strict、原三项业务测试和构建通过，弃用调用和动态方法为零。
npm 发布等待保持一小时，无单包例外。本 PR 不发版或部署生产。

Reel 保留 `State<Enum,Store>`，公共 updater 接受原 Enum，UI 输入经 Enum 检查后
派发。存档仍输出 Map；原 Map/Struct 输入通过已有 Store 边界恢复。
恢复成功后才注册 beforeunload 保存，解析/解码失败不会覆盖原存档；不吞错、不清空
或替换数据。此流程没有新增定时保存。

当前源码只有示例 UI 和 Store updater；历史简介中的 diff 算法仍为 WIP，
本迁移没有补写或验证不存在的算法。此前 0.32.0 候选已完成合成输入、run 读内容和
刷新恢复的隔离浏览器验收；本次未重跑浏览器，不把此前结果当作本次完整页面证明。

### Workflow

Use `calcit.cirru` and `deps.cirru`; do not restore the retired `compact.cirru`
or `package.cirru`. Generated `js-out/` is not committed.

Use Node 24 and Yarn 4.18.0. Strict dependency installation and the original type/test gates are retained.
Browser and production acceptance remain separate from successful compilation.

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
