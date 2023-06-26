# Language

Pages can be written in multiple languages.
If a client has access to environment variables,
it **must** use them derive the preferred user language.
<!-- If not, then clients **must** make reasonable assumptions based on the information provided by the environment in which they operate (e.g. consulting navigator.languages in a browser, etc.). -->

## Language Environment Variable

The `LANG` environment variable specifies the user's preferred locale.

The `LANGUAGE` environment variable specifies a priority list of locales that can be used if locale defined by `LANG` is not available.

Both `LANG` and `LANGUAGE` may contain the values `C` or `POSIX`, which should be ignored.

<!-- Improve Section -->
The [`LC_MESSAGES` environment](https://www.gnu.org/software/gettext/manual/html_node/Locale-Environment-Variables.html) variable **may** be present.
If the client itself is localized and `LC_MESSAGES` is present,
it **must** use its value in order to determine the language in which interface text is shown
(separately from the language used for pages).
In the absence of `LC_MESSAGES`, then `LANG` and `LANGUAGE` **must** be used for this instead.

### Determine Display Language

1. Check `LANG`; if not set, skip to step 5.
2. Extract the priority list from `LANGUAGE`; if not set, start with empty priority list.
3. Append the value of `LANG` to the priority list.
4. Follow the priority list in order and use the first available language.
5. Fallback to English if none of the other languages are available.

### Fallback

Regardless of the language determined though the environment,
clients **must** always fallback to English if the page does not exist in the user's preferred language.
Clients **may** notify users when a page in their preferred language cannot be found
(optionally linking to the [translations section](https://github.com/tldr-pages/tldr/blob/main/CONTRIBUTING.md#translations)).

## Handling Lookup w/ Languages

Note that the page lookup is highly RECOMMENDED to give precedence to the platform over the language.
In other words, look for a platform under each language before checking the next preferred language.

Here's an example of how a lookup should be handled on `linux` having it set to `LANG=it` and `LANGUAGE="it:fr:en"`:

1. pages.it/linux/some-page.md -> false
2. pages.fr/linux/some-page.md -> false
3. pages/linux/some-page.md -> false
4. pages.it/common/some-page.md -> false
5. pages.fr/common/some-page.md -> false
6. pages/common/some-page.md -> true
