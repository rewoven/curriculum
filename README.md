# Rewoven Curriculum

Paywalled sustainability courses for kids 7-14 at **curriculum.rewovenapp.com**.
Phoenix app with **server-side premium gate** — lesson HTML never ships to
the browser unless `profiles.is_premium = true` in Supabase.

## What it does

- **6 courses** matching the 6 quiz categories (Circular Economy, Fashion,
  Textile Lifecycle, Sustainable Brands, Recycling, Living Sustainably)
- **24 lessons** total (4 per course)
- Each lesson: reading → key takeaways → 2-3 hands-on activities →
  end-of-lesson question
- **Public landing page** lists all courses (so non-subscribers can see
  what they'd unlock)
- **Lesson pages are server-side gated** by `lib/rewoven_curriculum_web/plugs/require_premium.ex`
  which verifies the Supabase JWT cookie, looks up `profiles.is_premium`,
  and redirects to `https://premium.rewovenapp.com` on failure

## Architecture

```
Visitor hits /courses/circular-economy/linear-vs-circular
    │
    ▼
RequirePremium plug
    │  reads sb-<ref>-auth-token cookie (set by Supabase JS on
    │  premium.rewovenapp.com — cookie is shared across *.rewovenapp.com)
    ▼
Verify JWT against Supabase → get user
    ▼
Read profiles.is_premium for that user
    ▼
   premium?
    │
    ├─ yes → render lesson HTML
    └─ no  → 302 redirect to https://premium.rewovenapp.com
```

## Local dev

```bash
mix deps.get
SUPABASE_URL=https://<project>.supabase.co \
SUPABASE_ANON_KEY=<anon key> \
PORT=4002 mix phx.server
# open http://localhost:4002
# Lesson URLs will redirect because there's no JWT cookie locally
```

## Production deploy (VPS)

Run `./scripts/deploy.sh` from your laptop. It:
1. rsyncs the code to `root@185.197.250.205:/opt/rewoven_curriculum/`
2. compiles + digests assets on the VPS
3. restarts the systemd service

The service runs on **port 4003**, fronted by nginx + certbot at
`https://curriculum.rewovenapp.com`.

## Editing content

All 6 courses + 24 lesson titles/summaries: `lib/rewoven_curriculum/curriculum.ex`.
Full lesson body content: `lib/rewoven_curriculum/lessons.ex`.

To add a new lesson:
1. Add it to the `:lessons` list in `curriculum.ex`
2. Add the matching `{course_slug, lesson_slug} => %{...}` entry in `lessons.ex`
3. Run `./scripts/deploy.sh`
