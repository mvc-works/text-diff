
Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### Workflow

Calcit 0.27.0 uses `calcit.cirru` and `deps.cirru` as the canonical project files. Do not restore or commit the retired `compact.cirru` or `package.cirru`; CI rejects either file, even when ignored by Git.

`yarn build` generates JavaScript explicitly and uses `VITE_BASE_URL` for frontend assets (relative URLs when unset). CI builds with the COS prefix:

```bash
VITE_BASE_URL=https://cos-sh.tiye.me/mvc-works/text-diff/pr/ yarn build
```

Public upload verification uses `worktools/cos-upload-action`'s built-in verify settings, without an extra CDN checker. Existing server deployment paths and shared fonts/icons are unchanged.

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
