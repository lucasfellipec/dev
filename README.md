# Development Environment

## Firefox Add-ons that I use
- uBlock Origin
- Vimium C
- Privacy Badger
- Dark Reader
- Return YouTube Dislike
- Mouse Tooltip Translator
- AI Subtitles & Immersive Translate - Trancy
- Control Panel for Twitter

## Enabling Firefox CSS

Open `about:config` and set the following:

```
toolkit.legacyUserProfileCustomizations.stylesheets
```

to `true`.

After set the value to `true`, open `about:support` and get the path of the profile directory. Then open the profile directory and create a folder named `chrome`.

Inside the `chrome` folder, create two files named `userChrome.css` and `userContent.css` and put the following content inside `userChrome.css`:

```css
* {
    font-family: JetBrainsMono Nerd Font;
}
```
