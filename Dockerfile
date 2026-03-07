#   Go OCI
#   Copyright (c) 2026 Andrea and Eric DELAGE <Contact@by-EAjks.Com>
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.

FROM golang:1.26.0

LABEL maintainer="by-EAjks.Com <Contact@by-EAjks.Com>"

ENV DEBIAN_FRONTEND=noninteractive

ENV GOMODCACHE="/go-modules"

WORKDIR /go-download

RUN true \
 && go mod download al.essio.dev/pkg/shellescape@v1.5.1 \
 && go mod download cel.dev/expr@v0.25.1 \
 && go mod download dario.cat/mergo@v1.0.1 \
 && go mod download github.com/BurntSushi/toml@v1.4.0 \
 && go mod download github.com/MakeNowJust/heredoc@v1.0.0 \
 && go mod download github.com/Masterminds/goutils@v1.1.1 \
 && go mod download github.com/Masterminds/semver/v3@v3.4.0 \
 && go mod download github.com/Masterminds/sprig/v3@v3.3.0 \
 && go mod download github.com/NYTimes/gziphandler@v1.1.1 \
 && go mod download github.com/antlr4-go/antlr/v4@v4.13.0 \
 && go mod download github.com/beorn7/perks@v1.0.1 \
 && go mod download github.com/blang/semver/v4@v4.0.0 \
 && go mod download github.com/cenkalti/backoff/v4@v4.3.0 \
 && go mod download github.com/cenkalti/backoff/v5@v5.0.3 \
 && go mod download github.com/cespare/xxhash/v2@v2.3.0 \
 && go mod download github.com/coreos/go-semver@v0.3.1 \
 && go mod download github.com/coreos/go-systemd/v22@v22.5.0 \
 && go mod download github.com/davecgh/go-spew@v1.1.2-0.20180830191138-d8f796af33cc \
 && go mod download github.com/emicklei/go-restful/v3@v3.13.0 \
 && go mod download github.com/evanphx/json-patch/v5@v5.9.11 \
 && go mod download github.com/felixge/httpsnoop@v1.0.4 \
 && go mod download github.com/fsnotify/fsnotify@v1.9.0 \
 && go mod download github.com/fxamacker/cbor/v2@v2.9.0 \
 && go mod download github.com/go-logr/logr@v1.4.3 \
 && go mod download github.com/go-logr/stdr@v1.2.2 \
 && go mod download github.com/go-logr/zapr@v1.3.0 \
 && go mod download github.com/go-ole/go-ole@v1.2.6 \
 && go mod download github.com/go-openapi/jsonpointer@v0.21.2 \
 && go mod download github.com/go-openapi/jsonreference@v0.21.0 \
 && go mod download github.com/go-openapi/swag@v0.24.1 \
 && go mod download github.com/go-openapi/swag/cmdutils@v0.24.0 \
 && go mod download github.com/go-openapi/swag/conv@v0.24.0 \
 && go mod download github.com/go-openapi/swag/fileutils@v0.24.0 \
 && go mod download github.com/go-openapi/swag/jsonname@v0.24.0 \
 && go mod download github.com/go-openapi/swag/jsonutils@v0.24.0 \
 && go mod download github.com/go-openapi/swag/loading@v0.24.0 \
 && go mod download github.com/go-openapi/swag/mangling@v0.24.0 \
 && go mod download github.com/go-openapi/swag/netutils@v0.24.0 \
 && go mod download github.com/go-openapi/swag/stringutils@v0.24.0 \
 && go mod download github.com/go-openapi/swag/typeutils@v0.24.0 \
 && go mod download github.com/go-openapi/swag/yamlutils@v0.24.0 \
 && go mod download github.com/go-viper/mapstructure/v2@v2.4.0 \
 && go mod download github.com/gobuffalo/flect@v1.0.3 \
 && go mod download github.com/gogo/protobuf@v1.3.2 \
 && go mod download github.com/golang/protobuf@v1.5.4 \
 && go mod download github.com/google/btree@v1.1.3 \
 && go mod download github.com/google/cel-go@v0.26.0 \
 && go mod download github.com/google/gnostic-models@v0.7.0 \
 && go mod download github.com/google/go-cmp@v0.7.0 \
 && go mod download github.com/google/uuid@v1.6.0 \
 && go mod download github.com/gorilla/websocket@v1.5.4-0.20250319132907-e064f32e3674 \
 && go mod download github.com/grpc-ecosystem/go-grpc-prometheus@v1.2.0 \
 && go mod download github.com/grpc-ecosystem/grpc-gateway/v2@v2.28.0 \
 && go mod download github.com/huandu/xstrings@v1.5.0 \
 && go mod download github.com/inconshreveable/mousetrap@v1.1.0 \
 && go mod download github.com/jaypipes/ghw@v0.23.0 \
 && go mod download github.com/jaypipes/pcidb@v1.1.1 \
 && go mod download github.com/josharian/intern@v1.0.0 \
 && go mod download github.com/json-iterator/go@v1.1.12 \
 && go mod download github.com/kr/pretty@v0.3.1 \
 && go mod download github.com/kr/text@v0.2.0 \
 && go mod download github.com/kylelemons/godebug@v1.1.0 \
 && go mod download github.com/mailru/easyjson@v0.9.1 \
 && go mod download github.com/mattn/go-isatty@v0.0.20 \
 && go mod download github.com/mitchellh/copystructure@v1.2.0 \
 && go mod download github.com/mitchellh/reflectwalk@v1.0.2 \
 && go mod download github.com/moby/spdystream@v0.5.0 \
 && go mod download github.com/moby/sys/mountinfo@v0.7.2 \
 && go mod download github.com/modern-go/concurrent@v0.0.0-20180306012644-bacd9c7ef1dd \
 && go mod download github.com/modern-go/reflect2@v1.0.3-0.20250322232337-35a7c28c31ee \
 && go mod download github.com/munnerz/goautoneg@v0.0.0-20191010083416-a7dc8b61c822 \
 && go mod download github.com/mxk/go-flowrate@v0.0.0-20140419014527-cca7078d478f \
 && go mod download github.com/onsi/gomega@v1.39.1 \
 && go mod download github.com/pelletier/go-toml@v1.9.5 \
 && go mod download github.com/pelletier/go-toml/v2@v2.2.4 \
 && go mod download github.com/pilebones/go-udev@v0.9.1 \
 && go mod download github.com/pkg/errors@v0.9.1 \
 && go mod download github.com/pmezard/go-difflib@v1.0.1-0.20181226105442-5d4384ee4fb2 \
 && go mod download github.com/pmorjan/kmod@v1.1.1 \
 && go mod download github.com/prometheus/client_golang@v1.23.2 \
 && go mod download github.com/prometheus/client_model@v0.6.2 \
 && go mod download github.com/prometheus/common@v0.66.1 \
 && go mod download github.com/prometheus/procfs@v0.16.1 \
 && go mod download github.com/rogpeppe/go-internal@v1.14.1 \
 && go mod download github.com/sagikazarmark/locafero@v0.11.0 \
 && go mod download github.com/shopspring/decimal@v1.4.0 \
 && go mod download github.com/sourcegraph/conc@v0.3.1-0.20240121214520-5f936abd7ae8 \
 && go mod download github.com/spf13/afero@v1.15.0 \
 && go mod download github.com/spf13/cast@v1.10.0 \
 && go mod download github.com/spf13/cobra@v1.10.2 \
 && go mod download github.com/spf13/pflag@v1.0.10 \
 && go mod download github.com/spf13/viper@v1.21.0 \
 && go mod download github.com/stoewer/go-strcase@v1.3.0 \
 && go mod download github.com/subosito/gotenv@v1.6.0 \
 && go mod download github.com/valyala/fastjson@v1.6.4 \
 && go mod download github.com/vishvananda/netlink@v1.3.1 \
 && go mod download github.com/vishvananda/netns@v0.0.5 \
 && go mod download github.com/x448/float16@v0.8.4 \
 && go mod download github.com/yusufpapurcu/wmi@v1.2.4 \
 && go mod download go.etcd.io/etcd/api/v3@v3.6.6 \
 && go mod download go.etcd.io/etcd/client/pkg/v3@v3.6.6 \
 && go mod download go.etcd.io/etcd/client/v3@v3.6.6 \
 && go mod download go.opentelemetry.io/auto/sdk@v1.2.1 \
 && go mod download go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc@v0.61.0 \
 && go mod download go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp@v0.63.0 \
 && go mod download go.opentelemetry.io/otel@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploggrpc@v0.18.0 \
 && go mod download go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploghttp@v0.18.0 \
 && go mod download go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/exporters/otlp/otlptrace@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/exporters/stdout/stdoutlog@v0.18.0 \
 && go mod download go.opentelemetry.io/otel/exporters/stdout/stdoutmetric@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/exporters/stdout/stdouttrace@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/log@v0.18.0 \
 && go mod download go.opentelemetry.io/otel/metric@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/sdk@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/sdk/log@v0.18.0 \
 && go mod download go.opentelemetry.io/otel/sdk/metric@v1.42.0 \
 && go mod download go.opentelemetry.io/otel/trace@v1.42.0 \
 && go mod download go.opentelemetry.io/proto/otlp@v1.9.0 \
 && go mod download go.uber.org/multierr@v1.11.0 \
 && go mod download go.uber.org/zap@v1.27.1 \
 && go mod download go.yaml.in/yaml/v2@v2.4.3 \
 && go mod download go.yaml.in/yaml/v3@v3.0.4 \
 && go mod download golang.org/x/crypto@v0.48.0 \
 && go mod download golang.org/x/exp@v0.0.0-20251113190631-e25ba8c21ef6 \
 && go mod download golang.org/x/mod@v0.33.0 \
 && go mod download golang.org/x/net@v0.51.0 \
 && go mod download golang.org/x/oauth2@v0.35.0 \
 && go mod download golang.org/x/sync@v0.19.0 \
 && go mod download golang.org/x/sys@v0.41.0 \
 && go mod download golang.org/x/term@v0.40.0 \
 && go mod download golang.org/x/text@v0.34.0 \
 && go mod download golang.org/x/time@v0.14.0 \
 && go mod download golang.org/x/tools@v0.42.0 \
 && go mod download gomodules.xyz/jsonpatch/v2@v2.5.0 \
 && go mod download google.golang.org/genproto/googleapis/api@v0.0.0-20260209200024-4cfbd4190f57 \
 && go mod download google.golang.org/genproto/googleapis/rpc@v0.0.0-20260209200024-4cfbd4190f57 \
 && go mod download google.golang.org/grpc@v1.79.2 \
 && go mod download google.golang.org/protobuf@v1.36.11 \
 && go mod download gopkg.in/evanphx/json-patch.v4@v4.13.0 \
 && go mod download gopkg.in/inf.v0@v0.9.1 \
 && go mod download gopkg.in/natefinch/lumberjack.v2@v2.2.1 \
 && go mod download gopkg.in/yaml.v3@v3.0.1 \
 && go mod download howett.net/plist@v1.0.2-0.20250314012144-ee69052608d9 \
 && go mod download k8s.io/api@v0.35.2 \
 && go mod download k8s.io/apiextensions-apiserver@v0.35.2 \
 && go mod download k8s.io/apimachinery@v0.35.2 \
 && go mod download k8s.io/apiserver@v0.35.2 \
 && go mod download k8s.io/cli-runtime@v0.35.2 \
 && go mod download k8s.io/client-go@v0.35.2 \
 && go mod download k8s.io/cloud-provider@v0.35.2 \
 && go mod download k8s.io/cluster-bootstrap@v0.35.2 \
 && go mod download k8s.io/code-generator@v0.35.2 \
 && go mod download k8s.io/component-base@v0.35.2 \
 && go mod download k8s.io/component-helpers@v0.35.2 \
 && go mod download k8s.io/cri-api@v0.35.2 \
 && go mod download k8s.io/cri-client@v0.35.2 \
 && go mod download k8s.io/csi-translation-lib@v0.35.2 \
 && go mod download k8s.io/dynamic-resource-allocation@v0.35.2 \
 && go mod download k8s.io/enhancements@v0.0.0-20260306150618-8263d295f79f \
 && go mod download k8s.io/gengo/v2@v2.0.0-20250922181213-ec3ebc5fd46b \
 && go mod download k8s.io/klog/v2@v2.140.0 \
 && go mod download k8s.io/kms@v0.35.2 \
 && go mod download k8s.io/kops@v1.34.1 \
 && go mod download k8s.io/kube-aggregator@v0.35.2 \
 && go mod download k8s.io/kube-controller-manager@v0.35.2 \
 && go mod download k8s.io/kube-openapi@v0.0.0-20260304202019-5b3e3fdb0acf \
 && go mod download k8s.io/kube-proxy@v0.35.2 \
 && go mod download k8s.io/kube-scheduler@v0.35.2 \
 && go mod download k8s.io/kubeadm@v0.0.0-20260205110031-b55d17889e42 \
 && go mod download k8s.io/kubectl@v0.35.2 \
 && go mod download k8s.io/kubelet@v0.35.2 \
 && go mod download k8s.io/metrics@v0.35.2 \
 && go mod download k8s.io/mount-utils@v0.35.2 \
 && go mod download k8s.io/pod-security-admission@v0.35.2 \
 && go mod download k8s.io/release@v0.20.1 \
 && go mod download k8s.io/sample-apiserver@v0.35.2 \
 && go mod download k8s.io/sample-cli-plugin@v0.35.2 \
 && go mod download k8s.io/sample-controller@v0.35.2 \
 && go mod download k8s.io/test-infra@v0.0.0-20260307171601-1d8f9214bed2 \
 && go mod download k8s.io/utils@v0.0.0-20260210185600-b8788abfbbc2 \
 && go mod download sigs.k8s.io/apiserver-network-proxy/konnectivity-client@v0.31.2 \
 && go mod download sigs.k8s.io/cluster-api@v1.12.3 \
 && go mod download sigs.k8s.io/controller-runtime@v0.23.3 \
 && go mod download sigs.k8s.io/e2e-framework@v0.6.0 \
 && go mod download sigs.k8s.io/gateway-api@v1.5.0 \
 && go mod download sigs.k8s.io/json@v0.0.0-20250730193827-2d320260d730 \
 && go mod download sigs.k8s.io/kind@v0.31.0 \
 && go mod download sigs.k8s.io/kubebuilder@v1.0.8 \
 && go mod download sigs.k8s.io/kustomize/api@v0.21.1 \
 && go mod download sigs.k8s.io/kustomize/kyaml@v0.21.1 \
 && go mod download sigs.k8s.io/node-feature-discovery@v0.18.3 \
 && go mod download sigs.k8s.io/randfill@v1.0.0 \
 && go mod download sigs.k8s.io/scheduler-plugins@v0.33.5 \
 && go mod download sigs.k8s.io/structured-merge-diff@v1.0.2 \
 && go mod download sigs.k8s.io/structured-merge-diff/v6@v6.3.2 \
 && go mod download sigs.k8s.io/yaml@v1.6.0

ENV GOPROXY="off"
ENV GONOSUMDB="*"
ENV GONOSUMCHECK="*"
