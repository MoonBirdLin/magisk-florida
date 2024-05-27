# MagiskFlorida

Forked from https://github.com/MoonBirdLin/magisk-florida, change frida to florida.
> [Florida](https://github.com/Ylarod/Florida): Basic anti-detection frida-server

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/ViRb3/magisk-frida/main.yml?branch=master)
![GitHub repo size](https://img.shields.io/github/repo-size/ViRb3/magisk-frida)
![GitHub downloads](https://img.shields.io/github/downloads/ViRb3/magisk-frida/total)

> [Frida](https://frida.re) is a dynamic instrumentation toolkit for developers, reverse-engineers, and security researchers

> [MagiskFrida](README.md) lets you run frida-server on boot with [Magisk](https://github.com/topjohnwu/Magisk)

Solve isuue "Android crashes + reboots upon running frida-server" in OnePlus 9RT by setting properties `persist.device_config.runtime_native.usap_pool_enabled` and `sys.usap.enable`
- [Android crashes + reboots upon running frida-server #1879](https://github.com/frida/frida/issues/1879)
- [Can't spawn app on xiaomi pad 6 pro (Android13) due to usap #2719](https://github.com/frida/frida/issues/2719)
- Key idea is to disable all usap properties. If this module does not work on your devices, please add instructions before frida-server in base/common/service.sh (By the way, you can use `getprop | grep usap` to search all usap related properties).

## Supported architectures

`arm64`, `arm`, `x86`, `x86_64`

## Instructions

Install `MagiskFrida.zip` from [the releases](https://github.com/ViRb3/magisk-frida/releases)

> :information_source: Do not use the Magisk repository, it is obsolete and no longer receives updates

## How fast are frida-server updates?

Instant! This module is hooked to the official Frida build process

## Issues?

Check out the [troubleshooting guide](TROUBLESHOOTING.md)

## Building yourself

```bash
poetry install
poetry run python main.py
```

- Release ZIP will be under `/build`
- frida-server downloads will be under `/downloads`
