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
 && go mod download github.com/fsnotify/fsnotify@v1.9.0 \
 && go mod download github.com/go-viper/mapstructure/v2@v2.4.0 \
 && go mod download github.com/inconshreveable/mousetrap@v1.1.0 \
 && go mod download github.com/pelletier/go-toml/v2@v2.2.4 \
 && go mod download github.com/sagikazarmark/locafero@v0.11.0 \
 && go mod download github.com/sourcegraph/conc@v0.3.1-0.20240121214520-5f936abd7ae8 \
 && go mod download github.com/spf13/afero@v1.15.0 \
 && go mod download github.com/spf13/cast@v1.10.0 \
 && go mod download github.com/spf13/cobra@v1.10.2 \
 && go mod download github.com/spf13/pflag@v1.0.10 \
 && go mod download github.com/spf13/viper@v1.21.0 \
 && go mod download github.com/subosito/gotenv@v1.6.0 \
 && go mod download go.opentelemetry.io/auto/sdk@v1.2.1 \
 && go mod download go.opentelemetry.io/otel@v1.41.0 \
 && go mod download go.opentelemetry.io/otel/metric@v1.41.0 \
 && go mod download go.opentelemetry.io/otel/sdk@v1.41.0 \
 && go mod download go.opentelemetry.io/otel/sdk/metric@v1.41.0 \
 && go mod download go.opentelemetry.io/otel/trace@v1.40.0 \
 && go mod download go.uber.org/multierr@v1.11.0 \
 && go mod download go.uber.org/zap@v1.27.1 \
 && go mod download go.yaml.in/yaml/v3@v3.0.4 \
 && go mod download golang.org/x/net@v0.48.0 \
 && go mod download golang.org/x/sys@v0.39.0 \
 && go mod download golang.org/x/text@v0.32.0 \
 && go mod download google.golang.org/genproto/googleapis/rpc@v0.0.0-20251202230838-ff82c1b0f217 \
 && go mod download google.golang.org/grpc@v1.79.1 \
 && go mod download google.golang.org/protobuf@v1.36.10 \
 && go mod download k8s.io/api@v0.35.2 \
 && go mod download k8s.io/apiserver@v0.35.2 \
 && go mod download k8s.io/client-go@v0.35.2 \
 && go mod download k8s.io/kubectl@v0.35.2 \
 && go mod download k8s.io/kubelet@v0.35.2 \
 && go mod download k8s.io/kubernetes@v1.35.2 \
 && go mod download sigs.k8s.io/node-feature-discovery@v0.18.3 \
 && go mod download tags.cncf.io/container-device-interface@v1.1.0

ENV GOPROXY="off"
ENV GONOSUMDB="*"
ENV GONOSUMCHECK="*"
