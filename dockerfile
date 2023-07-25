 FROM golang:latest as builder

 COPY *.go .

 RUN go build *.go

 FROM scratch

 COPY --from=builder /go/* .

 CMD ["./hello"]
