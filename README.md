
Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### Workflow

Calcit 0.28.0 uses `calcit.cirru` and `deps.cirru` as the canonical project files. Do not restore or commit the retired `compact.cirru` or `package.cirru`; CI rejects either file, even when ignored by Git.

`yarn build` generates JavaScript explicitly and uses `VITE_BASE_URL` for frontend assets (relative URLs when unset). CI builds with the COS prefix:

```bash
VITE_BASE_URL=https://cos-sh.tiye.me/mvc-works/text-diff/pr/ yarn build
```

Public upload verification uses `worktools/cos-upload-action@v1.2.0`'s `public-base-url` setting, without an extra CDN checker. Existing production prefixes, server deployment paths and shared fonts/icons are unchanged. PR uploads use isolated number/run/attempt prefixes; each PR and production job queues separately (up to 100 waiting jobs). Formal action tags remain mutable upstream; read-only permissions and disabled checkout credentials do not eliminate that risk.

本轮迁移使用正式 Calcit / procs 0.28.0、Node 24、Yarn 4.18.0。JS FFI
显式声明已有传递依赖版本，不升级或降级现有模块 alpha；Caps 普通解析仍报告
已有版本图冲突，不将其称为 strict Caps 通过。

持久化写入 Map 存档格式，恢复时兼容旧 Map 与已有 Struct 存档，由
`decode-map-as` 转成具体 `Store`。
textarea 回调接收 Respo 实际的事件 Map、派发单个 Enum 操作，返回 Unit；
浏览器挂载、事件注册和存储均调用已声明的适配器，不保留本项目的 unsafe cast。

原有三个状态测试在隔离 updater 的真实 JS 生成代码下通过，原质量预算未提高；
`unsafeCoerce` 由 1 降到 0。还验证了旧 Map 存档往返与实际输入回调，不运行
浏览器、监听器或用户存储，不添加测试脚本。CI 保留完整入口与业务测试，并使用
Calcit 原生 public/quality 门禁。

完整严格检查仍为 126 passed / 12 failed / 77 blocked / 1 cascaded，失败来自
共享 Respo 与 Markdown。默认构建因已发布 Markdown 的 RegExp/Fn 声明错误
而未进入 Vite，见 [Markdown #65](https://github.com/Respo/respo-markdown.calcit/issues/65)。
因此上述局部测试不是整站/CDN 验收，也不代表已经发布或完成迁移。

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
