
Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### Workflow

Calcit 0.27.0 uses `calcit.cirru` and `deps.cirru` as the canonical project files. Do not restore or commit the retired `compact.cirru` or `package.cirru`; CI rejects either file, even when ignored by Git.

`yarn build` generates JavaScript explicitly and uses `VITE_BASE_URL` for frontend assets (relative URLs when unset). CI builds with the COS prefix and validates generated HTML against that exact prefix:

```bash
VITE_BASE_URL=https://cos-sh.tiye.me/mvc-works/text-diff/pr/ yarn build
VITE_BASE_URL=https://cos-sh.tiye.me/mvc-works/text-diff/pr/ node --test scripts/cdn.test.mjs
```

Remote upload verification belongs to `worktools/cos-upload-action`; the local test only checks the built frontend. Existing server deployment paths and shared fonts/icons are unchanged.

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
