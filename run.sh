echo "pki:$PASSWORD" | chpasswd
/etc/init.d/ssh start
mkdir /var/log/ocsp
touch /opt/pki/ca/index.txt.attr
npm config set registry http://registry.npmjs.org/
npm cache clean -f
npm install -g n
n stable
/etc/init.d/openssl-ocsp start
nohup node /opt/pki/Router/ocsp_router.js &
cat
