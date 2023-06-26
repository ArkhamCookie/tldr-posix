# Command Line Interface

## Arguments

| Option | Required | Meaning |
| --- | --- | --- |
| `-v`,<br>`--version` | true | Shows the current version of the client, and the version of this specification that it implements. |
| `-p`,<br>`--platform` | true | Specifies the platform to be used to preform the action.  If this option is specified, the selected platform **must** be checked first instead of the current platform. |
| `-u`,<br>`--update` | conditional | Updates the offline cache of pages.  **Must** be implemented if cache is supported. |
| `-l`,<br>`--list` | false | Lists all the pages of current platform to standard output. |
| `-L`,<br>`--language` | false | Specifies the preferred language for the page returned.  Overrides other language detection mechanisms.  See [language section](/docs/app/language.md) for more infomation. |

Clients **may** support additional custom arguments and syntax not documented here.

Additional decoration **may** be printed if the standard output is [TTY](https://www.kernel.org/doc/html/latest/driver-api/tty/index.html).  If not, the output must not contain any additional decorations.
For example, a page list **must** be formatted with 1 page name per line
This is to enable easy manipulation using standard cli tools like `grep`, `awk`, etc.

## Page Names

The first argument that does not start with a dash, **must** be considered the page name.

Page names **may** contain spaces (e.g. `git status`), and such page names **must** be transparently concatenated with dashes.
For example, the page name `git checkout` becomes `git-checkout`.

Pages names **may** contain mixed capitalization, and such page names **must** be transparently lowercased.
For example, the page name `eyeD3` becomes `eyed3`.
