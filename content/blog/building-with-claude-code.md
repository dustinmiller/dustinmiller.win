+++
title = "Building this site with Claude Code"
date = 2025-06-04
description = "My experience using Claude Code to improve this link blog's design and functionality"
+++

![Terminal Wrangler header](/images/terminal-wrangler.png)

I've been using [Claude Code](https://claude.ai/code) for a while now, and with it finally available for Pro Plan users, I decided to try it out on this link blog.

Pretty solid experience overall. What I liked was that it understood the project structure and could make changes across multiple files while keeping everything consistent.

## What worked well

The visual improvements came together nicely - applied a Dracula color scheme, enhanced the link styling (cyan links that turn purple on hover, which works well for a link blog), and cleaned up the CSS architecture.

Following optimization tips from [kmaasrud.com](https://kmaasrud.com/blog/optimize.html) and [Dan Luu's static site performance work](https://danluu.com/octopress-speedup/), we inlined all the CSS to eliminate extra HTTP requests and improve loading performance. Perfect for a link blog where speed matters.

One thing that stood out was solving the HTML indentation issue with Tera's `indent` filter. I care about clean, properly formatted markup, and Claude Code understood why that matters and implemented a clean solution. The [HTML validates perfectly](https://validator.w3.org/nu/?doc=https%3A%2F%2Fdustinmiller.win%2F) - no errors, no warnings.

## The workflow is smooth

Having an AI that can read the entire project context and make coordinated changes across templates is genuinely useful. It's like having someone who can implement changes quickly while maintaining consistency - which is exactly what you want when iterating on design.

The generated code is clean and follows good practices. Not groundbreaking, just solid development assistance that gets things done efficiently.

Worth trying if you're on the Pro plan and want to speed up those tedious styling and templating tasks.
