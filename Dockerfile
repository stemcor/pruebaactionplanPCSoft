FROM windev/webdev-base:FR280066p

COPY actionplangit.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/actionplangit

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/actionplangit/