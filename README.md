<div style="text-align: center">

[![Flatcar OS](https://img.shields.io/badge/Flatcar-Website-blue?logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjwhLS0gR2VuZXJhdG9yOiBBZG9iZSBJbGx1c3RyYXRvciAyNi4wLjMsIFNWRyBFeHBvcnQgUGx1Zy1JbiAuIFNWRyBWZXJzaW9uOiA2LjAwIEJ1aWxkIDApICAtLT4NCjxzdmcgdmVyc2lvbj0iMS4wIiBpZD0ia2F0bWFuXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgODAwIDYwMCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgODAwIDYwMDsiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KPHN0eWxlIHR5cGU9InRleHQvY3NzIj4NCgkuc3Qwe2ZpbGw6IzA5QkFDODt9DQo8L3N0eWxlPg0KPHBhdGggY2xhc3M9InN0MCIgZD0iTTQ0MCwxODIuOGgtMTUuOXYxNS45SDQ0MFYxODIuOHoiLz4NCjxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik00MDAuNSwzMTcuOWgtMzEuOXYxNS45aDMxLjlWMzE3Ljl6Ii8+DQo8cGF0aCBjbGFzcz0ic3QwIiBkPSJNNTQzLjgsMzE3LjlINTEydjE1LjloMzEuOVYzMTcuOXoiLz4NCjxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik02NTUuMiw0MjAuOXYtOTUuNGgtMTUuOXY5NS40aC0xNS45VjI2MmgtMzEuOVYxMzQuOEgyMDkuNFYyNjJoLTMxLjl2MTU5aC0xNS45di05NS40aC0xNnY5NS40aC0xNS45djMxLjINCgloMzEuOXYxNS44aDQ3Ljh2LTE1LjhoMTUuOXYxNS44SDI3M3YtMTUuOGgyNTQuOHYxNS44aDQ3Ljh2LTE1LjhoMTUuOXYxNS44aDQ3Ljh2LTE1LjhoMzEuOXYtMzEuMkg2NTUuMnogTTQ4Ny44LDE1MWg3OS42djMxLjgNCgloLTIzLjZ2NjMuNkg1MTJ2LTYzLjZoLTI0LjJMNDg3LjgsMTUxTDQ4Ny44LDE1MXogTTIzMywyMTQuNlYxNTFoNjMuN3YyMy41aC0zMS45djE1LjhoMzEuOXYyNC4yaC0zMS45djMxLjhIMjMzVjIxNC42eiBNMzA1LDMxNy45DQoJdjE1LjhoLTQ3Ljh2MzEuOEgzMDV2NDcuN2gtOTUuNVYyODYuMUgzMDVMMzA1LDMxNy45eiBNMzEyLjYsMjQ2LjRWMTUxaDMxLjl2NjMuNmgzMS45djMxLjhMMzEyLjYsMjQ2LjRMMzEyLjYsMjQ2LjRMMzEyLjYsMjQ2LjR6DQoJIE00NDguMywzMTcuOXY5NS40aC00Ny44di00Ny43aC0zMS45djQ3LjdoLTQ3LjhWMzAyaDE1Ljl2LTE1LjhoOTUuNVYzMDJoMTUuOUw0NDguMywzMTcuOXogTTQ0MCwyNDYuNHYtMzEuOGgtMTUuOXYzMS44aC0zMS45DQoJdi03OS41aDE1Ljl2LTE1LjhoNDcuOHYxNS44aDE1Ljl2NzkuNUg0NDB6IE01OTEuNiwzMTcuOXY0Ny43aC0xNS45djE1LjhoMTUuOXYzMS44aC00Ny44di0zMS43SDUyOHYtMTUuOGgtMTUuOXY0Ny43aC00Ny44VjI4Ni4xDQoJaDEyNy4zVjMxNy45eiIvPg0KPC9zdmc+DQo=)](https://www.flatcar.org/)
[![Discord](https://img.shields.io/badge/Discord-Chat%20with%20us!-5865F2?logo=discord)](https://discord.gg/PMYjFUsJyq)
[![Slack](https://img.shields.io/badge/Slack-Chat%20with%20us!-4A154B?logo=slack)](https://kubernetes.slack.com/archives/C03GQ8B5XNJ)
[![Twitter Follow](https://img.shields.io/twitter/follow/flatcar?style=social)](https://x.com/flatcar)
[![Mastodon Follow](https://img.shields.io/badge/Mastodon-Follow-6364FF?logo=mastodon)](https://hachyderm.io/@flatcar)
[![Bluesky](https://img.shields.io/badge/Bluesky-Follow-0285FF?logo=bluesky)](https://bsky.app/profile/flatcar.org)
[![OpenSSF Best Practices](https://www.bestpractices.dev/projects/10926/badge)](https://www.bestpractices.dev/projects/10926)


> **Note:** To file an issue for any Flatcar repository, please use the [central Flatcar issue tracker](https://github.com/flatcar/Flatcar/issues).
</div>

# Container Linux Config Transpiler

The Config Transpiler ("ct" for short) is the utility responsible for transforming a human-friendly Container Linux Config into a JSON file. This resulting file can be provided to a Container Linux machine when it first boots to provision the machine.

**NOTE: This tool is for Container Linux, not Fedora CoreOS. See [FCCT](https://github.com/coreos/fcct) for the Fedora CoreOS equivalent.**

## Documentation

If you're looking to begin writing configs for your Container Linux machines, check out the [getting started][get-started] documentation.

The [configuration][config] documentation is a comprehensive resource specifying what options can be in a Container Linux Config.

For a more in-depth view of ct and why it exists, take a look at the [Overview][overview] document.

Please use the [bug tracker][issues] to report bugs.

[ignition]: https://github.com/flatcar/ignition
[issues]: https://github.com/flatcar/flatcar/issues
[overview]: doc/overview.md
[get-started]: doc/getting-started.md
[config]: doc/configuration.md

## Examples

There are plenty of small, self-contained examples [in the documentation][examples].

[examples]: doc/examples.md

## Installation

### macOS homebrew

```bash
brew install coreos-ct
```

### Prebuilt binaries

The easiest way to get started using ct is to download one of the binaries from the [releases page on GitHub][releases].

One can use the following script to download and verify the signature of Config Transpiler:

```bash
# Specify Config Transpiler version
CT_VER=v0.6.1

# Specify Architecture
# ARCH=aarch64 # ARM's 64-bit architecture
ARCH=x86_64

# Specify OS
# OS=apple-darwin # MacOS
# OS=pc-windows-gnu.exe # Windows
OS=unknown-linux-gnu # Linux

# Specify download URL
DOWNLOAD_URL=https://github.com/flatcar/container-linux-config-transpiler/releases/download

# Remove previous downloads
rm -f /tmp/ct-${CT_VER}-${ARCH}-${OS} /tmp/ct-${CT_VER}-${ARCH}-${OS}.asc /tmp/coreos-app-signing-pubkey.gpg

# Download Config Transpiler binary
curl -L ${DOWNLOAD_URL}/${CT_VER}/ct-${CT_VER}-${ARCH}-${OS} -o /tmp/ct-${CT_VER}-${ARCH}-${OS}
chmod u+x /tmp/ct-${CT_VER}-${ARCH}-${OS}

# Download and import CoreOS application signing GPG key
curl https://coreos.com/dist/pubkeys/app-signing-pubkey.gpg -o /tmp/coreos-app-signing-pubkey.gpg
gpg2 --import --keyid-format LONG /tmp/coreos-app-signing-pubkey.gpg

# Download and import CoreOS application signing GPG key if it has not already been imported
curl -L ${DOWNLOAD_URL}/${CT_VER}/ct-${CT_VER}-${ARCH}-${OS}.asc -o /tmp/ct-${CT_VER}-${ARCH}-${OS}.asc
gpg2 --verify /tmp/ct-${CT_VER}-${ARCH}-${OS}.asc /tmp/ct-${CT_VER}-${ARCH}-${OS}
```

[releases]: https://github.com/flatcar/container-linux-config-transpiler/releases

### Building from source

To build from source you'll need to have the go compiler installed on your system.

```shell
git clone --branch v0.8.0 https://github.com/flatcar/container-linux-config-transpiler
cd container-linux-config-transpiler
make
```

The `ct` binary will be placed in `./bin/`.

Note: Review releases for new branch versions.

## Related projects

- [https://github.com/flatcar/ignition](https://github.com/flatcar/ignition)
- [https://github.com/flatcar/afterburn/](https://github.com/flatcar/afterburn)
- [https://github.com/poseidon/matchbox](https://github.com/poseidon/matchbox)

---

## Community & Project Documentation

- [Contributing Guidelines](CONTRIBUTING.md) — How to contribute, find issues, and submit pull requests
- [Code of Conduct](CODE_OF_CONDUCT.md) — Standards for respectful and inclusive community participation
- [Security Policy](SECURITY.md) — How to report vulnerabilities and security-related information
- [Maintainers](MAINTAINERS.md) — Current project maintainers and their responsibilities
- [Governance](GOVERNANCE.md) — Project governance model, decision-making process, and roles
