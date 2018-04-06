FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
	file://eth.network \
"

do_install_append() {
	install -m 0644 ${WORKDIR}/eth.network ${D}${sysconfdir}/systemd/network/
}
