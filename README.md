# KinoNiconico

[![KinoNiconico version](https://img.shields.io/hexpm/v/kino_niconico.svg)](https://hex.pm/packages/kino_niconico)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/kino_niconico/)
[![Hex Downloads](https://img.shields.io/hexpm/dt/kino_niconico)](https://hex.pm/packages/kino_niconico)
[![LICENSE](https://img.shields.io/hexpm/l/kino_niconico.svg)](https://github.com/RyoWakabayashi/kino_niconico/blob/master/LICENSE)

A simple Kino for playing Niconico videos on Livebook.

It was implemented with reference to [KinoYoutube](https://github.com/acalejos/kino_youtube) and [AstroNicoEmbed](https://github.com/Robot-Inventor/astro-nico-embed/).

## Installation

Install KinoNiconico in Livebook:

```elixir
Mix.install([
  {:kino_niconico, "~> 0.1"}
])
```

## Usage

```elixir
KinoNiconico.new("sm12345678")
```
