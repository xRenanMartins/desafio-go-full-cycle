FROM golang:1.17-alpine AS builder

WORKDIR /app

COPY go.mod ./

# Baixa as dependências Go
RUN go mod download

COPY . .

# Compila o código Go para um binário estático 
RUN CGO_ENABLED=0 GOOS=linux go build -o /fullcycle main.go

FROM scratch

# Copia o binário compilado da fase anterior para a nova imagem
COPY --from=builder /fullcycle /fullcycle

# Comando para executar o binário
CMD ["/fullcycle"]