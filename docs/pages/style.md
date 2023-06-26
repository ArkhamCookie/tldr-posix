# TLDR Pages Style Guide

This page lists specific formatting instructions for `tldr` pages. [^1] [^2]

## Layout

```markdown
# command name

> Short, snappy command description.
> Preferably one line; two lines is acceptable if necessary.
> More infomation: <https://example.com/command_name/help/page>.

- Command description:

`command_name options`

- Command description:

`command_name options`

... <!-- At most have 8 command examples -->

```

### Example

```markdown
# krita

> Krita is a sketching and painting program designed for digital artists.
> See also: `gimp`.
> More information: <https://docs.krita.org/en/reference_manual/linux_command_line.html>.

- Start Krita:

`krita`

- Open specific files:

`krita {{path/to/image1 path/to/image2 ...}}`

- Start without a splash screen:

`krita --nosplash`

- Start with a specific workspace:

`krita --workspace {{Animation}}`

- Start in fullscreen mode:

`krita --fullscreen`
```

---

For more about `tldr` Pages' style/syntax refer to [tldr page syntax](/docs/pages/syntax.md).
