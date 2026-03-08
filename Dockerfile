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
ENV GOPROXY="https://proxy.golang.org,direct"
ENV GONOSUMDB="*"
ENV GONOSUMCHECK="*"

WORKDIR /go-offline

RUN go mod init go-offline \
 && go get al.essio.dev/pkg/shellescape \
 && go get cel.dev/expr \
 && go get dario.cat/mergo \
 && go get github.com/BurntSushi/toml \
 && go get github.com/MakeNowJust/heredoc \
 && go get github.com/Masterminds/goutils \
 && go get github.com/Masterminds/semver/v3 \
 && go get github.com/Masterminds/sprig/v3 \
 && go get github.com/NYTimes/gziphandler \
 && go get github.com/antlr4-go/antlr/v4 \
 && go get github.com/beorn7/perks \
 && go get github.com/blang/semver/v4 \
 && go get github.com/cenkalti/backoff/v4 \
 && go get github.com/cenkalti/backoff/v5 \
 && go get github.com/cespare/xxhash/v2 \
 && go get github.com/coreos/go-semver \
 && go get github.com/coreos/go-systemd/v22 \
 && go get github.com/davecgh/go-spew \
 && go get github.com/emicklei/go-restful/v3 \
 && go get github.com/evanphx/json-patch/v5 \
 && go get github.com/felixge/httpsnoop \
 && go get github.com/fsnotify/fsnotify \
 && go get github.com/fxamacker/cbor/v2 \
 && go get github.com/go-logr/logr \
 && go get github.com/go-logr/stdr \
 && go get github.com/go-logr/zapr \
 && go get github.com/go-ole/go-ole \
 && go get github.com/go-openapi/jsonpointer \
 && go get github.com/go-openapi/jsonreference \
 && go get github.com/go-openapi/swag \
 && go get github.com/go-openapi/swag/cmdutils \
 && go get github.com/go-openapi/swag/conv \
 && go get github.com/go-openapi/swag/fileutils \
 && go get github.com/go-openapi/swag/jsonname \
 && go get github.com/go-openapi/swag/jsonutils \
 && go get github.com/go-openapi/swag/loading \
 && go get github.com/go-openapi/swag/mangling \
 && go get github.com/go-openapi/swag/netutils \
 && go get github.com/go-openapi/swag/stringutils \
 && go get github.com/go-openapi/swag/typeutils \
 && go get github.com/go-openapi/swag/yamlutils \
 && go get github.com/go-viper/mapstructure/v2 \
 && go get github.com/gobuffalo/flect \
 && go get github.com/gogo/protobuf \
 && go get github.com/golang/protobuf \
 && go get github.com/google/btree \
 && go get github.com/google/cel-go \
 && go get github.com/google/gnostic-models \
 && go get github.com/google/go-cmp \
 && go get github.com/google/uuid \
 && go get github.com/gorilla/websocket \
 && go get github.com/grpc-ecosystem/go-grpc-prometheus \
 && go get github.com/grpc-ecosystem/grpc-gateway/v2 \
 && go get github.com/huandu/xstrings \
 && go get github.com/inconshreveable/mousetrap \
 && go get github.com/jaypipes/ghw \
 && go get github.com/jaypipes/pcidb \
 && go get github.com/josharian/intern \
 && go get github.com/json-iterator/go \
 && go get github.com/kr/pretty \
 && go get github.com/kr/text \
 && go get github.com/kylelemons/godebug \
 && go get github.com/mailru/easyjson \
 && go get github.com/mattn/go-isatty \
 && go get github.com/mitchellh/copystructure \
 && go get github.com/mitchellh/reflectwalk \
 && go get github.com/moby/spdystream \
 && go get github.com/moby/sys/mountinfo \
 && go get github.com/modern-go/concurrent \
 && go get github.com/modern-go/reflect2 \
 && go get github.com/munnerz/goautoneg \
 && go get github.com/mxk/go-flowrate \
 && go get github.com/onsi/gomega \
 && go get github.com/pelletier/go-toml \
 && go get github.com/pelletier/go-toml/v2 \
 && go get github.com/pilebones/go-udev \
 && go get github.com/pkg/errors \
 && go get github.com/pmezard/go-difflib \
 && go get github.com/pmorjan/kmod \
 && go get github.com/prometheus/client_golang \
 && go get github.com/prometheus/client_model \
 && go get github.com/prometheus/common \
 && go get github.com/prometheus/procfs \
 && go get github.com/rogpeppe/go-internal \
 && go get github.com/sagikazarmark/locafero \
 && go get github.com/shopspring/decimal \
 && go get github.com/sourcegraph/conc \
 && go get github.com/spf13/afero \
 && go get github.com/spf13/cast \
 && go get github.com/spf13/cobra \
 && go get github.com/spf13/pflag \
 && go get github.com/spf13/viper \
 && go get github.com/stoewer/go-strcase \
 && go get github.com/subosito/gotenv \
 && go get github.com/valyala/fastjson \
 && go get github.com/vishvananda/netlink \
 && go get github.com/vishvananda/netns \
 && go get github.com/x448/float16 \
 && go get github.com/yusufpapurcu/wmi \
 && go get go.etcd.io/etcd/api/v3 \
 && go get go.etcd.io/etcd/client/pkg/v3 \
 && go get go.etcd.io/etcd/client/v3 \
 && go get go.opentelemetry.io/auto/sdk \
 && go get go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc \
 && go get go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp \
 && go get go.opentelemetry.io/otel \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploggrpc \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploghttp \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlptrace \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp \
 && go get go.opentelemetry.io/otel/exporters/stdout/stdoutlog \
 && go get go.opentelemetry.io/otel/exporters/stdout/stdoutmetric \
 && go get go.opentelemetry.io/otel/exporters/stdout/stdouttrace \
 && go get go.opentelemetry.io/otel/log \
 && go get go.opentelemetry.io/otel/metric \
 && go get go.opentelemetry.io/otel/sdk \
 && go get go.opentelemetry.io/otel/sdk/log \
 && go get go.opentelemetry.io/otel/sdk/metric \
 && go get go.opentelemetry.io/otel/trace \
 && go get go.opentelemetry.io/proto/otlp \
 && go get go.uber.org/multierr \
 && go get go.uber.org/zap \
 && go get go.yaml.in/yaml/v2 \
 && go get go.yaml.in/yaml/v3 \
 && go get golang.org/x/crypto \
 && go get golang.org/x/exp \
 && go get golang.org/x/mod \
 && go get golang.org/x/net \
 && go get golang.org/x/oauth2 \
 && go get golang.org/x/sync \
 && go get golang.org/x/sys \
 && go get golang.org/x/term \
 && go get golang.org/x/text \
 && go get golang.org/x/time \
 && go get golang.org/x/tools \
 && go get gomodules.xyz/jsonpatch/v2 \
 && go get google.golang.org/genproto/googleapis/api \
 && go get google.golang.org/genproto/googleapis/rpc \
 && go get google.golang.org/grpc \
 && go get google.golang.org/protobuf \
 && go get gopkg.in/evanphx/json-patch.v4 \
 && go get gopkg.in/inf.v0 \
 && go get gopkg.in/natefinch/lumberjack.v2 \
 && go get gopkg.in/yaml.v3 \
 && go get howett.net/plist \
 && go get k8s.io/api \
 && go get k8s.io/apiextensions-apiserver \
 && go get k8s.io/apimachinery \
 && go get k8s.io/apiserver \
 && go get k8s.io/cli-runtime \
 && go get k8s.io/client-go \
 && go get k8s.io/cloud-provider \
 && go get k8s.io/cluster-bootstrap \
 && go get k8s.io/code-generator \
 && go get k8s.io/component-base \
 && go get k8s.io/component-helpers \
 && go get k8s.io/cri-api \
 && go get k8s.io/cri-client \
 && go get k8s.io/csi-translation-lib \
 && go get k8s.io/dynamic-resource-allocation \
 && go get k8s.io/enhancements \
 && go get k8s.io/gengo/v2 \
 && go get k8s.io/klog/v2 \
 && go get k8s.io/kms \
 && go get k8s.io/kops \
 && go get k8s.io/kube-aggregator \
 && go get k8s.io/kube-controller-manager \
 && go get k8s.io/kube-openapi \
 && go get k8s.io/kube-proxy \
 && go get k8s.io/kube-scheduler \
 && go get k8s.io/kubeadm \
 && go get k8s.io/kubectl \
 && go get k8s.io/kubelet \
 && go get k8s.io/metrics \
 && go get k8s.io/mount-utils \
 && go get k8s.io/pod-security-admission \
 && go get k8s.io/release \
 && go get k8s.io/sample-apiserver \
 && go get k8s.io/sample-cli-plugin \
 && go get k8s.io/sample-controller \
 && go get k8s.io/test-infra \
 && go get k8s.io/utils \
 && go get sigs.k8s.io/apiserver-network-proxy/konnectivity-client \
 && go get sigs.k8s.io/cluster-api \
 && go get sigs.k8s.io/controller-runtime \
 && go get sigs.k8s.io/e2e-framework \
 && go get sigs.k8s.io/gateway-api \
 && go get sigs.k8s.io/json \
 && go get sigs.k8s.io/kind \
 && go get sigs.k8s.io/kubebuilder \
 && go get sigs.k8s.io/kustomize/api \
 && go get sigs.k8s.io/kustomize/kyaml \
 && go get sigs.k8s.io/node-feature-discovery \
 && go get sigs.k8s.io/randfill \
 && go get sigs.k8s.io/scheduler-plugins \
 && go get sigs.k8s.io/structured-merge-diff \
 && go get sigs.k8s.io/structured-merge-diff/v6 \
 && go get sigs.k8s.io/yaml \
 && go mod download all

ENV GOPROXY="file:///go-modules/cache/download,off"
ENV GONOSUMDB="*"
ENV GONOSUMCHECK="*"
ENV GOFLAGS="-mod=mod"
