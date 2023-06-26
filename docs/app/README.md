# TLDR Client Specification

Current Specification Version: [**1.5**](https://github.com/tldr-pages/tldr/blob/3faf0755468da6a2ab4ab6970529954256b9a880/CLIENT-SPECIFICATION.md) [^1] [^2]

This document does not contain the offical specification for `tldr-pages` clients.
<!-- This is just how I plan on making the app? -->

The keywords **must**, **must not**, **required**, **shall**, **shall not**, **should**, **should not**, **recommended**, **may**, and **optional** in this document are to be interpreted as described in [RFC 2119](https://datatracker.ietf.org/doc/html/rfc2119)

## Terminology

### Page

`tldr-pages` consists of multiple *pages* - each of which describes a specific command.

### Platform

Pages are grouped by platform (operating systems).  For example, `linux`, `osx`, `windows`.
The special platform `common` contains pages for commands that work identially across more than platform.

If a page is common across multiple platforms, but slightly different of a given platform, then the page is still stored in `common`,
but a copy is tailored for the differing platform is placed in that platform's folder.

For example, if the command `foo` is common to `linux`, `osx`, and `windows` but functions differently on `windows`.
Then the main page will be stored in `common` with a copy placed in `windows` that's altered to match the different functionality.

---

## Table of Contents

### [Command Line Interface](/docs/app/cli.md)

How the commond line interface is setup.

### [Database](/docs/app/database.md)

### [File Structure & Naming](/docs/app/files.md)

The file structure file naming scheme, and other file related aspects of the client.

### [Language](/docs/app/language.md)

Hind and determine the client's language.
Going though the fallback for languages.

---

[^1]: [Latest & Offical Specifcation](https://github.com/tldr-pages/tldr/blob/main/CLIENT-SPECIFICATION.md)
[^2]: [Changelog](https://github.com/tldr-pages/tldr/blob/main/CLIENT-SPECIFICATION.md#Changelog)
