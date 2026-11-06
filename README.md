# Samuel Santana III - Portfolio

My personal portfolio website showcasing my projects and experience.

## Tech Stack

Built with:
- **Hugo** - Static site generator
- **HugoBlox** - Portfolio template (modified)
- **Tailwind CSS** - Styling
- **hugomods/hugo:std-exts** - A hugo image with go git, node.js, npm, and SCSS/SASS support
- **nginx:alpine-slim** - Slim Nginx web server image

## Template & License

This site is built using the [HugoBlox Developer Portfolio template](https://github.com/HugoBlox/theme-dev-portfolio) and has been customized to showcase my work. The template code is licensed under the MIT License (see [LICENSE.md](LICENSE.md)).

**Important:** While the template code is MIT licensed, all personal content including:
- Written content (blog posts, project descriptions, etc.)
- Personal projects and portfolio items
- Images and media
- Personal information

...is **Copyright © 2026 Samuel Santana III. All Rights Reserved.**

## Live Site

🌐 [Visit the live site](https://samuel-santana-iii.github.io/)

## Local Development

To run this site locally:

```bash
# Clone the repository
git clone https://github.com/samuel-santana-iii/samuel-santana-iii.github.io.git
cd samuel-santana-iii.github.io

# Install dependencies
pnpm install

# Start development server
pnpm dev
```

The site will be available at `http://localhost:1313`

## Building for Production

```bash
pnpm build
```

## Deployment

The site is deployed to GitHub Pages by `.github/workflows/deploy.yml` on every push to `main`. The custom domain is set in `CNAME`.
