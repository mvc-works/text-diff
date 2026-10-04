
Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### Workflow

Calcit 0.27.0 uses `calcit.cirru` and `deps.cirru` as the canonical project files. Do not restore or commit the retired `compact.cirru` or `package.cirru`; CI rejects either file, even when ignored by Git.

`yarn build` generates JavaScript explicitly and uses `VITE_BASE_URL` for frontend assets (relative URLs when unset). CI builds with the COS prefix:

```bash
VITE_BASE_URL=https://cos-sh.tiye.me/mvc-works/text-diff/ yarn build
```

Public upload verification uses `worktools/cos-upload-action` v1.2.0's built-in
verify settings through `public-base-url`, without an extra CDN checker.
The action is pinned to the reviewed commit of that formal release. Existing
server deployment paths and shared fonts/icons are unchanged.

PR 预览路径为 `mvc-works/text-diff/pr/<number>/<run-id>/<attempt>/`，每次
运行及重试隔离，生产路径不变。同一 PR 使用独立上传队列，生产另用一个队列；
保留等待任务，不取消活跃上传。

本轮仅更新 COS/CDN，不改变当前 Calcit 0.27.0、模块版本、源码、锁文件
或原业务测试与类型门禁。主线保留已有 `caps --ci` 模式及其传递版本冲突，
不冒称 strict Caps 已通过。独立 0.28.0 候选仍被共享 Respo/Markdown
合同阻塞，COS 配置通过不代表完整 Calcit 升级完成。

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
