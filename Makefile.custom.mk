# Chart unit tests. Local only: these are not wired into CI, because chart unit
# tests belong in the generated workflow set so every app repo gets them
# consistently, rather than one hand-written workflow per repo.
#
# Deliberately does not depend on the generated `lint-chart`: that one needs
# docker with a TTY plus `architect`, so it does not run on a plain runner.

CHART ?= hello-world
HELM_UNITTEST_VERSION ?= v1.1.1

##@ Chart testing

.PHONY: helm-unittest
helm-unittest: helm-plugin-unittest ## Run the helm-unittest suites in helm/$(CHART)/tests/.
	@echo "====> $@"
	@helm unittest helm/$(CHART)

.PHONY: helm-plugin-unittest
helm-plugin-unittest:
	@helm plugin list | grep -q '^unittest' || \
		helm plugin install https://github.com/helm-unittest/helm-unittest --version $(HELM_UNITTEST_VERSION)
