module.exports.enableSeccompFilter = () => {
  const {
    SCMP_ACT_ALLOW,
    SCMP_ACT_ERRNO,
    NodeSeccomp,
    errors: {EACCESS},
  } = require('node-seccomp');

  const seccomp = NodeSeccomp();

  seccomp
    .init(SCMP_ACT_ALLOW)
    .ruleAdd(SCMP_ACT_ERRNO(EACCESS), 'open')
    .ruleAdd(SCMP_ACT_ERRNO(EACCESS), 'openat')
    .load();

  delete require.cache[require.resolve('node-seccomp')];
};

