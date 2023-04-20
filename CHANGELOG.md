# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project's packages adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

- Chart: Rename to  `hello-world`.

## [1.3.5] - 2023-04-20

- Deployment: Improve `topologySpreadConstraints`.

## [1.3.4] - 2023-04-20

- Chart: Always enable `NetworkPolicy`.

## [1.3.3] - 2023-04-19

### Added

- Chart: Install `NetworkPolicyy` when ingress is enabled and Cilium is present on the cluster.

## [1.3.2] - 2023-04-19

### Changed

- Chart: Minor improvements.

## [1.3.1] - 2023-04-18

### Added

- PSP: Add `projected` volume.

## [1.3.0] - 2023-03-09

### Added

- Chart: Add PSP with `runtime/default` seccomp profile.

## [1.2.2] - 2022-10-20

## [1.2.1] - 2022-10-20

- Values: Improve defaults.
- Deployment: Use common labels for pods.

## [1.2.0] - 2022-10-12

- Service: Add support for labels & annotations.

## [1.1.1] - 2022-09-13

- Image: Make registry configurable.

## [1.1.0] - 2022-09-06

- HPA: Use `autoscaling/v2`.

## [1.0.1] - 2022-08-25

- Values: Increase default limits.

## [1.0.0] - 2022-08-15

- Major rework: Upgrading from previous version might not work. Rather remove older versions and do a fresh install.

## [0.3.0] - 2022-03-14

- `Chart.yaml` includes now more metadata info, including explicitely set `appVersion`
- `_templates.yaml` is introduced and supports team label handling

## [0.2.0] - 2022-01-19

## Added

- Add `ingressClassName` value to allow users to specify different ingressClassName on the Ingress resource.

## [0.1.1] - 2022-01-07

## Fixed

- Update chart metadata to align with QA checks.

## [0.1.0] - 2021-09-08

First release published to the Giant Swarm catalog

## Changed

- Remove container image + CI configuration for building container image
- Add Ingress

## [0.0.1] 2020-07-16

Initial release

[Unreleased]: https://github.com/giantswarm/hello-world-app/compare/v1.3.5...HEAD
[1.3.5]: https://github.com/giantswarm/hello-world-app/compare/v1.3.4...v1.3.5
[1.3.4]: https://github.com/giantswarm/hello-world-app/compare/v1.3.3...v1.3.4
[1.3.3]: https://github.com/giantswarm/hello-world-app/compare/v1.3.2...v1.3.3
[1.3.2]: https://github.com/giantswarm/hello-world-app/compare/v1.3.1...v1.3.2
[1.3.1]: https://github.com/giantswarm/hello-world-app/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/giantswarm/hello-world-app/compare/v1.2.2...v1.3.0
[1.2.2]: https://github.com/giantswarm/hello-world-app/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/giantswarm/hello-world-app/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/giantswarm/hello-world-app/compare/v1.1.1...v1.2.0
[1.1.1]: https://github.com/giantswarm/hello-world-app/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/giantswarm/hello-world-app/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/giantswarm/hello-world-app/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/giantswarm/hello-world-app/compare/v0.3.0...v1.0.0
[0.3.0]: https://github.com/giantswarm/hello-world-app/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/giantswarm/hello-world-app/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/giantswarm/hello-world-app/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/hello-world-app/compare/v0.0.1...v0.1.0
[0.0.1]: https://github.com/giantswarm/hello-world-app/releases/tag/v0.0.1
