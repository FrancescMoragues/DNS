$TTL 1D
@   IN  SOA dmz1.erebor.com. admin.erebor.com. (
                2          ; Serial (incrementado)
                604800     ; Refresh
                84600      ; Retry
                2419200    ; Expire
                84600 )    ; Negative Cache TTL

@       IN  NS  dmz1.erebor.com.

dmz1    IN  A   55.234.17.129
ftp     IN  A   55.234.17.129
host1   IN  A   55.234.17.129
host2   IN  A   55.234.17.130
mail1   IN  A   55.234.17.131
intranet IN A   55.234.17.16
imp1    IN  A   55.234.17.132
imp2    IN  A   55.234.17.133
serv1   IN  A   55.234.17.117
