# Database

## Page/Database Resolution

### Platform

Clients **must** default to displaying the page associated with the user's current platform.
For example, a client running on *Windows 10* will default to displaying pages from the `windows` platform.
Clients **may** provide a user-configurable option to override this behaviour, however.

### Example Resolution

#### Typical

If a page is available from the host platform,
the client **must** open that page.

If a page is not available from the host platform,
the client **must** fallback to the special `common` platform.

#### Not Avaiable for Platform or Common

If a page is not available for either the host platform or the `common` platform,
then the client **should** search other platforms and display a page from there - along with a warning message.

For example, a user has a client on *windows* and request the `apt` page;
The client consults the platforms in the following order:

1. `windows` -> false
2. `common` -> false
3. `linux` -> true
4. `osx` -> foo
*Steps 3 & 4 are interchangeable.*

<!--
| platform | found |
| --- | --- |
| `windows` | false |
| `common` | false |
| `linux` | true |
| `osx` | foo |
-->

### Not Avaiable <!-- Anywhere -->

If a page is not found on *any* platform,
it is **recommended** that the client displays an error message
with a link to create a new issue against the [tldr-pages/tldr GitHub Repo](https://github.com/tldr-pages/tldr).

That might take the following form:

```html
https://github.com/tldr-pages/tldr/issues/new?title=page%20request{command_name}
```

`{command_name}` would be the name of the command that was not found.
Clients that have control over their exit code on the command line **must** exit with a non-zero exit code allow with the error message.

### Multiple Versions Avaiable

If multiple versions of a page are found for different platforms,
then the client **may** choose to display a notice to the user.

---

## Page/Database Fetching

Clients should **not** load pages directly from GitHub API.
They should instead load the pages/archive and/or page index from the static site [tldr.sh](https://tldr.sh).

- Pages archive is available at [tldr.sh/assets/tldr.zip](https://tldr.sh/assets/tldr.zip).
- Pages index is available  [tldr.sh/assets/index.json](https://tldr.sh/assets/index.json).

### Caching

If appropriate, it is **recommended** that client implement a cache of pages.
If implemented, the client **must** download the archive from
<!-- either <https://raw.githubusercontent.com/tldr-pages/tldr-pages.github.io/main/assets/tldr.zip> or -->
<https://tldr.sh/assets/tldr.zip>.

Caching **should** be done accoring to the user's language configuration *if any*, so there isn't wasted space on unneeded files for unused languages.

Clients **may** automatically update the cache.
