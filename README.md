# updated website

This repo is built on a fork of [this repository](https://github.com/leonidk/leonidk.github.io). **Jekyll** is a static site generator that's perfect for GitHub hosted blogs ([Jekyll Repository](https://github.com/jekyll/jekyll))

The website design is a modification of [Leonid Keselman's website](https://github.com/leonidk/leonidk.github.io) and [Jon Barron's website](https://jonbarron.info/) and is converted for my own use, re-purposing my old markdown posts. **Feel free to use template for your own purposes**, but please respect copyright for all the images/content in my `images`, `pdfs`, `_posts` folders. 



## updating the site

* **Add a paper:** add a file to `_posts/` (copy an existing one). Set `categories: research`, `year:`, and a short `venue_short:` tag such as `"ICRA '27"`. The first paragraph of the body is the one-line summary on the research page; anything after a blank line (e.g. the abstract) only shows on the paper's own page at `/pubs/<file-name-without-date>`. Optional: `award:` and `bibtex:`.
* **People, robots, videos:** edit `_data/people.yml`, `_data/robots.yml`, `_data/videos.yml`.
* **News:** edit the list in `index.html`.
* **Images:** after adding an image to `tn/images/`, run `bash _make_web_images.sh` to make its lighter web copy in `tn/web/`. Pages use the web copy when it exists and the original otherwise.
* **Shared header, footer, and `<head>`:** `_includes/`. Styles: `fluent.scss`.

## issues (from the original template)
* If you want multiple paragraphs, consider using `excerpt_separator: <!--more-->` in `_config.yml`, for my own use I didn't need this. 
* My own posts have lots of extra stuff left over from my old jekyll design ("author", long descriptions, etc.), feel free to ignore them
* I use thumbnails, so I can upload arbitrary sized images but then only display small ones. The `_make_thumbnails.sh` script generates them and the html template looks in `tn/` for all images. 
* I have three categories of post with slightly differerent formatting, so changing sizing requires edits in multiple paces. 
