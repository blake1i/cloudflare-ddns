mkdir -p release

CGO_ENABLED=0 GOOS=darwin GOARCH=amd64  go build -o release/cloudflare-ddns_darwin cloudflare-ddns.go
CGO_ENABLED=0 GOOS=linux GOARCH=amd64   go build -o release/cloudflare-ddns_linux cloudflare-ddns.go 
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o release/cloudflare-ddns_win.exe cloudflare-ddns.go