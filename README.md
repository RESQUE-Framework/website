## RESQUE: The Research Quality Evaluation scheme for psychological research

## [☞ Visit the RESQUE website!](https://resque-framework.github.io/website/)

The development takes place in this Github project.

Want to [contribute](https://resque-framework.github.io/website/team.html)?

## Developer Documentation

The website is built as a static website using [Quarto](https://quarto.org/).

### General workflow

- We use the [Issues](https://github.com/RESQUE-Framework/website/issues?q=sort%3Aupdated-desc+is%3Aissue+is%3Aopen) feature of the website repository to catalogue and discuss ideas and feature requests for the website. (Issues for the [Collector App](https://github.com/RESQUE-Framework/collector-app/issues?q=sort%3Aupdated-desc+is%3Aissue+is%3Aopen) and the [RESQUER](https://github.com/RESQUE-Framework/RESQUER/issues?q=sort%3Aupdated-desc+is%3Aissue+is%3Aopen) package should go into their respective repositories.)
- Do not push to the `main` branch directly. Instead, create a new branch for your changes and open a pull request (PR) to merge it into the `main` branch.
- Whenever a new commit is pushed to the `main` branch, the website is automatically built and deployed by a Github action. This takes ~1 min. and then the new website is live (both on the [Github Pages link](https://resque-framework.github.io/website/) and at [https://www.resque.info](https://www.resque.info))
- Github Pages uses caching. You will only see the change when you reload the website in your browser.

### How to add a news entry

1. Create a new qmd file in the `news` directory with the name `YYYY-MM-DD-title.qmd`, where `YYYY-MM-DD` is the date of the news and `title` is a short description of the news.
2. Add this yaml header to the news file (`author` is optional):

```yaml
---
title: "Title of the news"
date: YYYY-MM-DD
author: "Author Name"
---
```

3. Write the content of the news in markdown format.

All news then are automatically listed on the right side of the start page.