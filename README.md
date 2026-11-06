Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### 使用者影响

升级到 Calcit 和 `@calcit/procs` **0.35.1** 后，请重新安装依赖、编译并刷新。文本输入、Run 输出、原 Map 存档和页面 HUD 继续适用。

Reel 使用 `State<Op, Store>`。旧操作在入口解码，业务更新器接收具名操作。状态路径沿用 `CursorKey = Tag | String | Number`，已有 Map 或 Struct 存档仍在恢复时校验。恢复成功后才注册离页保存。

正式依赖为 Respo **0.19.4**、Reel **0.9.2**、Markdown **0.8.1**、UI **0.15.1**、JS-FFI **0.2.13**，传递 Router **0.12.1**。

### Workflow

Use `calcit.cirru` and `deps.cirru`; do not restore the retired `compact.cirru`
or `package.cirru`. Generated `js-out/` is not committed.

Use Node 24 and Yarn 4.18.0. Install Calcit 0.35.1 and Caps 0.1.1 separately
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
