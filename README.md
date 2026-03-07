# Go OCI

Containerized Go tools and packages used at https://by-EAjks.Com.

[![Build and deploy](https://github.com/by-EAjks-Com/Go-OCI/actions/workflows/default.yaml/badge.svg)](https://github.com/by-EAjks-Com/Go-OCI/actions/workflows/default.yaml)

Derive the packages to download from the packages of interest

````powershell
docker run `
  --interactive `
  --tty `
  --name go-oci `
  docker.io/golang:1.26.0
```

```bash
cd $HOME
go mod init go-modules
# CLI / Configuration
go get "github.com/spf13/cobra"
go get "github.com/spf13/viper"
# Logging (Unified Under zap)
go get "go.uber.org/zap"
go get "github.com/go-logr/logr"
go get "github.com/go-logr/zapr"
go get "k8s.io/klog/v2"
# gRPC
go get "google.golang.org/grpc"
go get "google.golang.org/protobuf"
# PCIe Discovery
go get "github.com/jaypipes/ghw"
go get "github.com/jaypipes/pcidb"
# VFIO / IOMMU / sysfs
go get "golang.org/x/sys/unix"
go get "github.com/vishvananda/netlink"
go get "github.com/pmorjan/kmod"
# PCIe Hot-Plug
go get "github.com/pilebones/go-udev"
go get "github.com/fsnotify/fsnotify"
# Kubernetes Core
go get "k8s.io/api"
go get "k8s.io/apimachinery"
go get "k8s.io/client-go"
go get "k8s.io/kubelet"
go get "k8s.io/component-base"
go get "k8s.io/utils"
go get "k8s.io/dynamic-resource-allocation"
# Kubernetes Extensions
go get "sigs.k8s.io/controller-runtime"
go get "sigs.k8s.io/node-feature-discovery"
# Other Kubernetes
go get "k8s.io/apiextensions-apiserver"
go get "k8s.io/apiserver"
go get "k8s.io/cli-runtime"
go get "k8s.io/cloud-provider"
go get "k8s.io/cluster-bootstrap"
go get "k8s.io/code-generator"
go get "k8s.io/component-helpers"
go get "k8s.io/cri-api"
go get "k8s.io/cri-client"
go get "k8s.io/csi-translation-lib"
go get "k8s.io/enhancements"
go get "k8s.io/kops"
go get "k8s.io/kube-aggregator"
go get "k8s.io/kube-controller-manager"
go get "k8s.io/kube-openapi"
go get "k8s.io/kube-proxy"
go get "k8s.io/kube-scheduler"
go get "k8s.io/kubeadm"
go get "k8s.io/kubectl"
go get "k8s.io/metrics"
go get "k8s.io/mount-utils"
go get "k8s.io/pod-security-admission"
go get "k8s.io/release"
go get "k8s.io/sample-apiserver"
go get "k8s.io/sample-cli-plugin"
go get "k8s.io/sample-controller"
go get "k8s.io/test-infra"
go get "sigs.k8s.io/cluster-api"
go get "sigs.k8s.io/descheduler"
go get "sigs.k8s.io/e2e-framework"
go get "sigs.k8s.io/gateway-api"
go get "sigs.k8s.io/json"
go get "sigs.k8s.io/kind"
go get "sigs.k8s.io/kubebuilder"
go get "sigs.k8s.io/kustomize/api"
go get "sigs.k8s.io/kustomize/kyaml"
go get "sigs.k8s.io/scheduler-plugins"
go get "sigs.k8s.io/structured-merge-diff"
go get "sigs.k8s.io/yaml"
# Observability
go get "go.opentelemetry.io/otel"
go get "go.opentelemetry.io/otel/log"
go get "go.opentelemetry.io/otel/sdk/log"
go get "go.opentelemetry.io/otel/exporters/stdout/stdoutlog"
go get "go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploggrpc"
go get "go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploghttp"
go get "go.opentelemetry.io/otel/metric"
go get "go.opentelemetry.io/otel/sdk/metric"
go get "go.opentelemetry.io/otel/exporters/stdout/stdoutmetric"
go get "go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc"
go get "go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp"
go get "go.opentelemetry.io/otel/trace"
go get "go.opentelemetry.io/otel/sdk/trace"
go get "go.opentelemetry.io/otel/exporters/stdout/stdouttrace"
go get "go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc"
go get "go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp"
go get "go.opentelemetry.io/otel/attribute"
go get "go.opentelemetry.io/otel/baggage"
go get "go.opentelemetry.io/otel/propagation"
# Utilities
go get "github.com/google/uuid"
```
