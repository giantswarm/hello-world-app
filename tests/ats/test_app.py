from pykube import Service
from pytest import mark
from pytest_helm_charts.clusters import Cluster
from pytest_helm_charts.giantswarm_app_platform.app import wait_for_apps_to_run
from pytest_helm_charts.k8s.deployment import wait_for_deployments_to_run

@mark.smoke
@mark.functional
@mark.upgrade
def test_hello_world(kube_cluster: Cluster) -> None:
    assert kube_cluster.kube_client is not None

    # Wait for hello-world app to run.
    wait_for_apps_to_run(kube_cluster.kube_client, [ "hello-world" ], "hello-world", 60)

    # Wait for hello-world deployment to run.
    wait_for_deployments_to_run(kube_cluster.kube_client, [ "hello-world" ], "hello-world", 60)

@mark.functional
@mark.upgrade
def test_requests(kube_cluster: Cluster) -> None:
    assert kube_cluster.kube_client is not None

    # Get service.
    service = Service.objects(kube_cluster.kube_client).filter(namespace = "hello-world").get(name = "hello-world")

    # Get response.
    response = service.proxy_http_get("/")

    # Assert response.
    assert response.status_code == 200
    assert "Hello World" in response.text
