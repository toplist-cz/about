# about — o.toplist.cz (project memory)

<!-- project: path:/home/openclaw/.openclaw/workspace/git/toplist/about -->

**Purpose:** Documentation + blog about the Czech TOPlist (www.toplist.cz), served at https://o.toplist.cz
**Repo:** `ssh://git@gitlab.toplist.cz:55555/toplist/about.git` (default branch `main`)
**Location (docker node):** `/home/openclaw/.openclaw/workspace/git/toplist/about/`
**Org-level reference (Sentry, domains, people):** gateway `memory/toplist.md`

## Stack
- **Hugo extended 0.125.7** (pinned — see Build gotchas) — static site generator
- **Hinode theme** (v0.22.3) — Bootstrap 5 docs+blog theme, pulled via **Go modules** (`hugo mod vendor`), declared in `go.mod`
- Single language: **Czech** (`config/_default/languages.toml`, contentDir `content`)
- `baseURL = https://o.toplist.cz/`; content: `content/napoveda/` (docs, incl. `dokumentace/`, `kod-na-stranku/`, `toplist-profi/`) + `content/blog/` + `content/authors/`
- npm deps exist only for linting + local `hugo-bin` — **NOT required for the Docker build**

## Config layout (Hugo 0.110+ split)
- `config/_default/hugo.toml` — main (title "O TOPlist.cz", minify tdewolff, module imports `github.com/gethinode/hinode`)
- `config/_default/params.toml` — Hinode params (dark mode, core modules: bootstrap/flexsearch/fontawesome; optional: leaflet/katex/lottie)
- `config/ci/hugo.toml`, `config/production/deployment.toml` (az-blob legacy — Netlify was removed in commit 677f2ff)

## Docker build & preview (this project, added 2026-09-09)
- `Dockerfile` — multi-stage: `golang:1.22-bookworm` base + **Hugo extended 0.125.7** from official .deb (same as CI) → stage `deps` (`hugo mod vendor` → `_vendor/`) → stage `build` (`hugo --gc --minify -e production` → `public/`) → `nginx:1.27-alpine` final image (built site + `nginx.conf` in repo)
- `docker-compose.yml` — service `toplist-about`, port **8090:80**, tz `Europe/Prague`, build context = repo root (source stays on the docker node; nothing installed on the host). `openclaw` user needs `sudo docker` (not in docker group).
- Commands (from repo root, on docker node):
  - `sudo docker compose up -d --build` — build + serve at http://10.2.40.122:8090/
  - `sudo docker compose down` — stop
- **Git rule (general, applies to every project):** never commit to `main` (protected) — feature branch + MR.
- Git identity (repo-local): `Claw (OpenClaw) <claw@openclaw.local>`.
- **2026-09-09:** build files + this memory committed as `b3b1f44` on `feat/docker-build` → **MERGED into `main` (8db13b2)**, branch deleted on origin.
- **2026-09-09 (blog):** article `content/blog/toplist-can-i-use.md` — **"TOPlist ❤️ Can I Use"** (CZ, author `toplist`, tags javascript+statistiky) about the `caniuse` project. Commit `97b7b99` on branch **`feat/blog-caniuse`** (pushed; MR pending). Image rebuilt + container restarted; article verified at `/blog/toplist-can-i-use/` (200, correct title).

## Build gotchas (verified 2026-09-09)
- **Registry mirror here serves only `gohugoio/hugo:latest`** (base, no `extended` binary) — tags `:ext` / `:0.147.7` etc. fail with "not found". Hence the .deb install in the Dockerfile.
- **Hugo version matters:** 0.147.7 fails with `partial "partials/image-definition.html" not found` — Hinode v0.22.3 `define`s that partial inside `layouts/partials/assets/image.html:152`, and newer Hugo no longer registers it when that partial isn't directly invoked. 0.125.7 (CI version) builds clean. Keep the pin.
- Node can reach github.com (release .debs) and proxy.golang.org (theme modules) — verified from the node.
- `netlify.toml` is legacy (removed from workflow in commit 677f2ff) but still in the repo — harmless.
- Verified live: `/`, `/napoveda/`, `/blog/`, `/napoveda/dokumentace/` all 200; hashed CSS asset 200; title `O TOPlist.cz`.

## Status (2026-09-09)
- Analysis + Docker build pipeline done and verified: image builds green, container serves built site (Czech blog/docs HTML + assets 200).
- Live CI deploys `public/` via rsync to `gitlab@10.183.148.183` (`www/t` on main, `www/about-dev` on branches) — see `.gitlab-ci.yml`.
