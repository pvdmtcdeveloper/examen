#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["BackEnd/Infraestructure/Security/JorgeGuillen.Security.service/JorgeGuillen.Security.service.csproj", "BackEnd/Infraestructure/Security/JorgeGuillen.Security.service/"]
RUN dotnet restore "BackEnd/Infraestructure/Security/JorgeGuillen.Security.service/JorgeGuillen.Security.service.csproj"
COPY . .
WORKDIR "/src/BackEnd/Infraestructure/Security/JorgeGuillen.Security.service"
RUN dotnet build "JorgeGuillen.Security.service.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "JorgeGuillen.Security.service.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "JorgeGuillen.Security.service.dll"]