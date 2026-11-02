Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### 使用者影响

CLI 与 `@calcit/procs` 配对正式 **0.34.1**，升级后需重新安装完整精确依赖图、
生成 JS 并完整刷新，不能跨工具链热重载保留旧 Reel 实例。
依赖使用已发布 Reel **0.7.1**、Markdown **0.5.2**、UI **0.11.0**、
Respo **0.18.0** 和 JS-FFI **0.2.9**，移除旧 alpha 配对。

状态更新的 cursor key 现在使用 `CursorKey = Tag | String | Number`；
`:states` 操作中的 Bool 等其他 key 会在原解码入口报错。顶层 states 的 Tag key 要求不变，
String/Number 用于嵌套路径。key 不增加包装，
状态 payload 仍保持开放，false/0 等值和原 Map 存档格式保留。
已有匿名 Enum 派发与 Reel 控制、恢复失败保护、HUD 和部署路径保持。
本轮通过官方 formatter 规范类型声明，新增 union 并收紧原 cursor List 解码，
开发工具条件子节点改为 Option，关闭时不渲染占位；
复用原三项业务测试，不增加编译器规则、类型预算、验证脚本或测试框架。
Caps strict/toolchain 继续使用真实发布图；具体原门禁与行为验收以本次 PR 为准。
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
Respo event Map, dispatches one Enum operation and returns Unit. Tag/String/Number cursor paths and state payloads are preserved; other key kinds are rejected. No new test framework or copied COS
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
