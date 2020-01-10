docker container stop hangfire

docker rm hangfire

docker run --name hangfire -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=h8t7-X9IAO' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest

docker exec -it hangfire /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P h8t7-X9IAO -Q 'CREATE DATABASE [pv-hf];'
