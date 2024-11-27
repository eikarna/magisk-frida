# MagiskFrida (Forked) - Strong Patch Edition

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/eikarna/magisk-frida/main.yml?branch=master)
![GitHub repo size](https://img.shields.io/github/repo-size/eikarna/magisk-frida)
![GitHub downloads](https://img.shields.io/github/downloads/eikarna/magisk-frida/total)

> [Frida](https://frida.re) is a dynamic instrumentation toolkit for developers, reverse-engineers, and security researchers

> [MagiskFrida](README.md) lets you run frida-server on boot with multiple root solutions

#### More info about strong patch:
- [ViRb3/magisk-frida](https://github.com/ViRb3/magisk-frida/issues/16)
- [CrackerCat/strongR-frida-android](https://github.com/CrackerCat/strongR-frida-android)
- and [hluwa/Patchs](https://github.com/hluwa/Patchs/tree/master/strongR-frida/frida-core)

## Supported root solutions

- [ ] [Magisk](https://github.com/topjohnwu/Magisk) (?)
- [X] [KernelSU](https://github.com/tiann/KernelSU) (Tested on Android 13)
- [ ] [APatch](https://github.com/bmax121/APatch) (?)

## Supported architectures

- [X] Arm64 (arm64-v8a)
- [X] Arm (armeabi-v7a)
- [X] x86_64 (amd64)
- [X] x86 (i386)

## Instructions

Install `MagiskFrida-*.zip` from [the releases](https://github.com/ViRb3/magisk-frida/releases)

> :information_source: Do not use the Magisk modules repository, it is obsolete and no longer receives updates

## How fast are frida-server updates?

Instant! This module is hooked up to the official Frida build process

## Issues?

Check out the [troubleshooting guide](TROUBLESHOOTING.md)

## Building yourself

```bash
poetry install
poetry run python main.py
```

- Release ZIP will be under `/build`
- frida-server downloads will be under `/downloads`
