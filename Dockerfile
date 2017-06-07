FROM golang:1.8-alpine
# This container is for daily development.

RUN apk add --no-cache build-base git libseccomp-dev linux-headers
RUN go get github.com/seccomp/libseccomp-golang
RUN go get github.com/fatih/color

# When running this image, mount the working copy root to
# /go/src/github.com/lablup/sorna-jail

CMD ["/bin/ash"]
