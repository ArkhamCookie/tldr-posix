# File Structure

```text
./src
├── pages/
│  ├── android/
│  ├── common/
│  ├── linux/
│  ├── macos@ -> ./osx/
│  ├── osx/
│  ├── sunos/
│  └── windows/
└── README.md
```

<!-- It is **recommened** that clients support `macos` as an alias for `osx`. -->

While clients do not need to support new platforms automatically, though some support is **recommended**, they **must not** break if additional platforms are added to tldr-pages.

## Translation File Naming

Other directories sit alongside the main `pages` directory and contain translations
Pages **may not** have a translation available for a given language.
Furthermore, a given language **may not** even have a folder yet.

The structure inside these translation folders is identical to the main `pages` folder.

### Name Format

The format of these directories is `pages.<locale>`,
where `<locale>` is a [POSIX Locale Name] in the form of `<language>_<country>`

- `<language>` is the shortest [ISO 639](https://wikipedia.org/wiki/ISO_639) language code for the chosen language.
- `<country>` is the two-letter [ISO 3166-1](https://wikipedia.org/wiki/ISO_3166-1) country code for a chosen region.

Examples:

- Chinese (Taiwan) = `pages.zh_TW`
- Portuguese (Brazil) = `pages.pt_BR`
- Italian = `pages.it`

## Page File Naming

The pages themselves reside insite the approprite platform folder with the extentsion `.md`.

### Example Mapping/Names:

| Command | Mapped | File |
| --- | --- | --- |
| `7za` | `7za` | `7za.md` |
| `git checkout` | `git-checkout` | `git-checkout.md` |
| `tar` | `tar` | `tar.md` |

## Page Structure

The pages are written in standard [CommonMark](https://commonmark.org/),
which the exception of the non-standard `{{` and `}}` syntax,
which surrounds values in an example that users may edit.

Clients **must not** break if the page format is changed within the [CommonMark specification](https://spec.commonmark.org/current).
