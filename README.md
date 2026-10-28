Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### Calcit 0.31.0 迁移：用户影响

CLI 与 JS runtime 配对正式 `0.31.0`。请重新安装依赖、生成 JS 并完整刷新，
不要跨工具链热重载保留旧 Reel 实例。UI 依赖使用已发布的 Respo `0.17.0-alpha.4`、
Reel `0.7.0-alpha.4`、UI `0.9.0-alpha.4`、Markdown `0.5.0-alpha.4` 和
JS-FFI `0.2.7`；这不是全部依赖均为稳定版的声明。

Respo 的 `dispatch-op` 槽绑定到显式声明为 `Enum` 的 `DispatchOp` 类型别名。
别名的代表值不会派发；业务操作与 Reel 控制仍使用原有匿名 Enum，运行时检查、
公开 updater、Map 存档和 HUD 保持原合同。移除已失效的 `reel.util/generate-id!`
导入，调用仍解析为内置 `generate-id!`。不新增名义操作包装或强转。

完整 strict、原业务测试、构建和实际页面验收必须分别通过；具体结果以迁移 PR
精确提交为准。保留原类型门禁、COS 内置校验及部署路径。

### 历史：0.30.1 完整依赖图



CLI/procs 继续配对正式 `0.30.1`；直接依赖升级为已发布的 Reel `0.6.42`、
Markdown `0.4.60`、UI `0.8.1`、Respo `0.16.126`、JS-FFI `0.2.6`。
请重新安装完整图、生成 JS 并完整刷新，不混用旧模块实例；UI 升级可能有样式差异，
不承诺逐像素相同。不能只凭根版本号判断模块图已完成正式配对。

本轮仅把组件中两处旧 Map 合并调用改为 receiver 方法，保留原三参数转发；
公开 schema、Store/Enum 操作、HUD、原三项业务测试、存档 key 和恢复失败保护不变。
保留 all-defs、完整 strict、deprecated-call/dynamic-method 零门禁；此前已移除的
五 namespace 重复检查不恢复。不增加脚本、预算、强转或 concurrently。
COS 仅用 action 内置 verify，原前端部署路径不变；不合并或部署生产，不重启后端或发版。

### 历史：此前已合并的源码与根工具链迁移

本轮从 alpha.4 成对升级到正式 Calcit/procs `0.30.1`，模块使用正式
Respo `0.16.122`、Reel `0.6.39`、UI `0.7.41`、Markdown `0.4.58`、JS-FFI `0.2.3`。
升级后需要完整刷新，不能跨热重载保留原 Map Reel 实例。

公开 updater 继续接受原 Enum 操作；内容更新、游标更新、Map/Struct 存档恢复和未知操作
保持原分支。非法 content/cursor 在实际使用处由已有 decoder 拒绝，不强转或补业务默认值。
Reel 内部改为 `State<Enum,Store>`，记录保留真实操作和 Store，持久化仍输出原 Map 存档，
存储 key、生产 COS 前缀及服务器路径不变。UI 的 Dynamic 回调输入先检查为 Enum，
不把开放入口伪装成更窄的函数签名，也不额外添加操作载体或适配框架。

修复实际复现的存档丢失：恢复失败时，提前注册的 beforeunload 回调会把原存档覆盖为空 Store。
现改为恢复成功后才注册这一监听；保留原解析/解码错误，不吞错、不自动清空或替换存档。
同时删除从未执行的旧 flipped/setInterval 注释，不恢复定时持久化。正常 beforeunload 保存不变。

当前 Snapshot 只有示例工作流 UI 与 Store updater；历史简介中的 diff 算法仍是 WIP，
本迁移没有补写或声称已经验证不存在的算法，也不据此发布模块版本。

此前 alpha.4 迁移的本地完整 strict、JS/Vite 构建和原有 3 个业务测试通过，测试文件与断言不变。
浏览器真实输入、run 按钮读 Store、刷新后存档恢复通过，无 warning/error；
实际 typed Reel 的 Op identity、回放、混合游标和未知操作保留 Store 也已验证。
构建仍有原包体超过 500 kB 的提示，不通过抬高阈值隐藏。干净 Caps 安装与远端
验收以 PR Actions 为准；本地未执行 Caps，不宣称 CDN 公共校验已通过。
这些历史结果不代表本轮正式工具链或失败存档修复已验收；本轮结果以 PR 的精确提交为准。

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
