# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a minimal personal website (`jayzheng.com`) — a single static HTML page with a CSS stylesheet, deployed to AWS S3.

## Deploy

```sh
./deploy.sh
```

This syncs all files (excluding `deploy.sh` and `.git/`) to the `s3://jayzheng.com` bucket using the AWS CLI.

## Architecture

The entire site is two files:

- `index.html` — a `<pre>`-formatted personal page using `<span>` classes for color-coded sections and `<a>` tags for links
- `jay.css` — minimal stylesheet defining `.content`, `.sep` (turquoise), `.directive` (blue), `.key` (green), and link styles

The design is intentionally text-terminal aesthetic. Content is structured as colored labels (`.key`, `.directive`) with associated links, separated by `.sep` dividers.
