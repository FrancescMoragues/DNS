$TTL 1D
@   IN  SOA ns1.skoda.com. admin.skoda.com. (
                2024052201 ; Serial (YYYYMMDDNN)
                604800     ; Refresh
                86400      ; Retry
                2419200    ; Expire
                86400 )    ; Negative Cache TTL

@       IN  NS  ns1.skoda.com.
@       IN  NS  ns2.skoda.com.
@       IN  NS  ns3.skoda.com.

@       IN  MX  10 mail1.skoda.com.
@       IN  MX  20 mail2.skoda.com.

ns1     IN  A   10.72.97.30
ns2     IN  A   48.163.97.91
ns3     IN  A   48.163.97.93
s2      IN  A   10.72.97.30
r1      IN  A   10.72.97.1
ftp     IN  A   10.72.97.30
mail1   IN  A   48.163.97.91
mail2   IN  A   48.163.97.93
imp1    IN  A   10.72.97.33 
imp2    IN  A   10.72.97.34
s1      IN  A   10.72.97.17

; --- Registros CNAME (Alias) ---
; Nota: h1.bentley.com debe ser resoluble o terminar en punto
www      IN  CNAME h1.bentley.com.
intranet IN  CNAME h1.bentley.com.
