# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project's packages adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Add `observability.giantswarm.io/tenant` pod label to activate log ingestion into Loki.

## [0.1.1] - 2026-03-13

### Changed

- Use dev version `0.4.0-89e64a39bdd85bd038b9e6b9631b3fb7c089cd3b` of helloworld image with heartbeat ping and readiness probe (see https://github.com/giantswarm/helloworld/pull/151 )

### Added

- Add config value `hartbeat.url` to values schema, to configure the heartbeat URL.

## [0.1.0] - 2026-03-12

### Added

- Initial chart

[Unreleased]: https://github.com/giantswarm/important-service/compare/v0.1.1...HEAD
[0.1.1]: https://github.com/giantswarm/important-service/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/important-service/compare/v2.11.0...v0.1.0
