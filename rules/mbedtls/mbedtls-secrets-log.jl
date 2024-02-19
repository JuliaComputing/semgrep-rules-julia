using MbedTLS
using HTTP

#ruleid: mbedtls-secrets-log
c = SSLConfig(true, log_secrets="/Users/me/secret_key_log")
get("https://httpbin.org/ip", sslconfig=c)

#ruleid: mbedtls-secrets-log
d = MbedTLS.SSLConfig(true, log_secrets="/Users/me/secret_key_log")
get("https://httpbin.org/ip", sslconfig=d)

#ruleid: mbedtls-secrets-log
d = MbedTLS.SSLConfig(false, log_secrets="/Users/me/secret_key_log")

logfile="/Users/me/secret_key_log"
#ruleid: mbedtls-secrets-log
d = SSLConfig(false, log_secrets=logfile)

function startSSL(;f=nothing)
    #ruleid: mbedtls-secrets-log
    d = SSLConfig(false, log_secrets=f)
end

#ruleid: mbedtls-secrets-log
get("https://httpbin.org/ip", sslconfig=SSLConfig(true, log_secrets="/Users/me/secret_key_log"))