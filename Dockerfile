#escape=`
FROM microsoft/iis
LABEL maintainer="Brad Christie"
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue'; $WarningPreference = 'Continue';"]

CMD "Hello, world!" | Set-Content "C:\inetpub\wwwroot\index.html" -Encoding Ascii -NoNewLine