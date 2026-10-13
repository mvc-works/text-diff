Text diff
----

> a diffing library for [diffview](https://github.com/Memkits/diffview). WIP...

### Workflow

Use `calcit.cirru` and `deps.cirru`; do not restore the retired `compact.cirru`
or `package.cirru`. Generated `js-out/` is not committed.

The migration candidate pairs formal Calcit/procs 0.29.1, Node 24 and Yarn
4.18.0 with formal Respo 0.16.116, Reel 0.6.35, UI 0.7.35, Markdown 0.4.50
and JS-FFI 0.2.1. Strict dependency installation and full application acceptance
must pass before this candidate is treated as a completed migration.

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

COS verification uses the action's built-in `public-base-url` setting, pinned
to the reviewed formal v1.2.0 commit. Production paths, server deployment
directory and shared fonts/icons are unchanged. PR paths use
`mvc-works/text-diff/pr/<number>/<run-id>/<attempt>/`; PR and production upload
queues are separate, and stale production commits cannot overwrite current
resources. Canonical formatting and strict public-definition checks replace
the old migration quality budget.

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
