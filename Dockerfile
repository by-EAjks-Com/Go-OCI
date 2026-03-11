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
 && go get github.com/spf13/cobra@v1.10.2 \
 && go get github.com/spf13/viper@v1.21.0 \
 && go get go.uber.org/zap@v1.27.1 \
 && go get github.com/go-logr/logr@v1.4.3 \
 && go get github.com/go-logr/stdr@v1.2.2 \
 && go get github.com/go-logr/zapr@v1.3.0 \
 && go get k8s.io/klog/v2@v2.140.0 \
 && go get google.golang.org/grpc@v1.79.2 \
 && go get google.golang.org/protobuf@v1.36.11 \
 && go get golang.org/x/sys@v0.42.0 \
 && go get github.com/pilebones/go-udev@v0.9.1 \
 && go get github.com/pmorjan/kmod@v1.1.1 \
 && go get github.com/vishvananda/netlink@v1.3.1 \
 && go get k8s.io/api@v0.35.2 \
 && go get k8s.io/apimachinery@v0.35.2 \
 && go get k8s.io/client-go@v0.35.2 \
 && go get k8s.io/dynamic-resource-allocation@v0.35.2 \
 && go get k8s.io/kubelet@v0.35.2 \
 && go get sigs.k8s.io/controller-runtime@v0.23.3 \
 && go get sigs.k8s.io/controller-tools@v0.18.0 \
 && go get sigs.k8s.io/kind@v0.31.0 \
 && go get tags.cncf.io/container-device-interface@v1.1.0 \
 && go get go.opentelemetry.io/otel@v1.42.0 \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploggrpc@v0.18.0 \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlplog/otlploghttp@v0.18.0 \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc@v1.42.0 \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetrichttp@v1.42.0 \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc@v1.42.0 \
 && go get go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp@v1.42.0 \
 && go mod download all

ENV GOPROXY="file:///go-modules/cache/download,off"
ENV GONOSUMDB="*"
ENV GONOSUMCHECK="*"
ENV GOFLAGS="-mod=mod"
