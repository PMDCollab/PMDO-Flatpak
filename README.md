# PMDO Flatpak

This repo contains a Flatpak for [PMDC](https://github.com/PMDCollab/PMDC/) + [PMDO Assets](https://github.com/audinowho/DumpAsset).

To build the Flatpak:

```bash
flatpak run org.flatpak.Builder --user --install --force-clean build-dir org.pmdcollab.pmdo.yml
```

To update:

- Update the tag in `org.pmdcollab.pmdo.yml` and `generate-nuget.sh` to the latest release of PMDC.
- Update the commit hash in `org.pmdcollab.pmdo.yml` to the latest commit of PMDO Assets.
- Re-generate the nuget sources by running `./generate-nuget.sh`. You will need Python for this and you
  need to have the submodules checked out.
- Add release to `org.pmdcollab.pmdo.appdata.xml`.

To run:
- Launch the app "PMDO" using the desktop of your choice, or
- `flatpak run org.pmdcollab.pmdo`

To run with custom assets or arguments pass additional arguments to the run command like so:
- `flatpak run org.pmdcollab.pmdo foobar`.

By default (when no arguments are given) PMDO is launched with the arguments 
`-asset /app/share/PMDO/Assets/` which point to the bundled assets.

`-appdata` is additionally ALWAYS added as an argument last.