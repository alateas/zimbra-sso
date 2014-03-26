zmprov mcf zimbraSpnegoAuthEnabled TRUE
zmprov mcf zimbraSpnegoAuthErrorURL /?ignoreLoginURL=1
zmprov mcf zimbraSpnegoAuthRealm SPBDOORS.LOCAL

zmprov ms mail.spbdoors.ru zimbraSpnegoAuthTargetName HTTP/mail.spbdoors.ru
zmprov ms mail.spbdoors.ru zimbraSpnegoAuthPrincipal HTTP/mail.spbdoors.ru@SPBDOORS.LOCAL

zmprov md spbdoors.ru zimbraAuthKerberos5Realm SPBDOORS.LOCAL
zmprov md spbdoors.ru +zimbraVirtualHostname mail.spbdoors.ru

zmprov md spbdoors.ru zimbraWebClientLoginURL '../service/spnego'
zmprov md spbdoors.ru +zimbraWebClientLoginURLAllowedUA '.*MSIE.*Windows.*'
zmprov md spbdoors.ru +zimbraWebClientLoginURLAllowedUA '.*Windows.*Chrome.*'
zmprov md spbdoors.ru +zimbraWebClientLoginURLAllowedUA '.*Windows.*Firefox.*'

zmprov md spbdoors.ru zimbraWebClientLogoutURL '../?sso=1'
zmprov md spbdoors.ru +zimbraWebClientLogoutURLAllowedUA '.*MSIE.*Windows.*'
zmprov md spbdoors.ru +zimbraWebClientLogoutURLAllowedUA '.*Windows.*Chrome.*'
zmprov md spbdoors.ru +zimbraWebClientLogoutURLAllowedUA '.*Windows.*Firefox.*'
