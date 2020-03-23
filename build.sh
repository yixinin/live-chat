cd go-chat
go build
docker build -t chat:1 .

cd ../go-voip
go build
docker build -t voip:1 .