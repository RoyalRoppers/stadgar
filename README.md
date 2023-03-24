# Statues of Royal Roppers

## Changes

Whenever a change is approved on one yearly meeting, a pull request with the
change should be opened. After the next vote, the pull request should be merged
or closed.

## Structure

All styling stuff is in `template.typ`, so that `stadgar.typ` as much as
possible only contains the statues themselves.

## Rendering to PDF

This project uses typst for typesettings, which can be downloaded from
[here](https://github.com/typst/typst) and built with
`cargo build -p typst-cli --release`.

These statues can the be rendered to `stadgar.pdf` using:

```sh
$ /path/to/typst stadgar.typ
```

To get automatic updates as the statues are changed locally, also use the `-w`
flag and display the PDF using a viewer that supports auto reloading, such as
evince (usually called "documents" in gnome).

## References

To refer to another paragraph, append `<some-descriptive-id>` to it and refer to
it with `@some-descriptive-id`. For example:

```typ
== En vacker paragraf <vacker>

...

== En annan paragraf
Någonting någonting enligt @vacker.
```

Would turn into something like:

```
§ 2.2 En vacker paragraf
...

§ 2.3 En annan paragraf
Någonting någonting enligt § 2.2.
```
