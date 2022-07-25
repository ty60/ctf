const arr_0x402c = ['value', '2wfTpTR', 'instantiate', '275341bEPcme', 'innerHTML', '1195047NznhZg', '1qfevql', 'input', '1699808QuoWhA', 'Correct!', 'check_flag', 'Incorrect!', './JIFxzHyW8W', '23SMpAuA', '802698XOMSrr', 'charCodeAt', '474547vVoGDO', 'getElementById', 'instance', 'copy_char', '43591XxcWUl', '504454llVtzW', 'arrayBuffer', '2NIQmVj', 'result'];

/*
[
  'instance',       'copy_char',
  '43591XxcWUl',    '504454llVtzW',
  'arrayBuffer',    '2NIQmVj',
  'result',         'value',
  '2wfTpTR',        'instantiate',
  '275341bEPcme',   'innerHTML',
  '1195047NznhZg',  '1qfevql',
  'input',          '1699808QuoWhA',
  'Correct!',       'check_flag',
  'Incorrect!',     './JIFxzHyW8W',
  '23SMpAuA',       '802698XOMSrr',
  'charCodeAt',     '474547vVoGDO',
  'getElementById'
]
*/



const callback_0x4e0e = function(arg0_0x553839, arg1_0x53c021) {
    arg0_0x553839 = arg0_0x553839 - 0x1d6;
    let _0x402c6f = arr_0x402c[arg0_0x553839];
    return _0x402c6f;
};



(function(arg0_0x76dd13, arg1_0x3dfcae) {
    const callback_0x371ac6 = callback_0x4e0e;
    while (!![]) {
        try {
            const calc_res_0x478583 = -parseInt(callback_0x371ac6(0x1eb)) + parseInt(callback_0x371ac6(0x1ed)) + -parseInt(callback_0x371ac6(0x1db)) * -parseInt(callback_0x371ac6(0x1d9)) + -parseInt(callback_0x371ac6(0x1e2)) * -parseInt(callback_0x371ac6(0x1e3)) + -parseInt(callback_0x371ac6(0x1de)) * parseInt(callback_0x371ac6(0x1e0)) + parseInt(callback_0x371ac6(0x1d8)) * parseInt(callback_0x371ac6(0x1ea)) + -parseInt(callback_0x371ac6(0x1e5));



            if (calc_res_0x478583 === arg1_0x3dfcae)
                break;
            else
                arg0_0x76dd13['push'](arg0_0x76dd13['shift']());
        } catch (_0x41d31a) {
            arg0_0x76dd13['push'](arg0_0x76dd13['shift']());
        }
    }
}(arr_0x402c, 0x994c3));


let exports;
(async()=>{
    const callback_0x48c3be = callback_0x4e0e;
    let fetch_res_0x5f0229 = await fetch(callback_0x48c3be(0x1e9))
      , _0x1d99e9 = await WebAssembly[callback_0x48c3be(0x1df)](await fetch_res_0x5f0229[callback_0x48c3be(0x1da)]())
      , _0x1f8628 = _0x1d99e9[callback_0x48c3be(0x1d6)];
    exports = _0x1f8628['exports'];
}
)();


function onButtonPress() {
    const callback_0xa80748 = callback_0x4e0e;
    let input_0x3761f8 = document['getElementById'](callback_0xa80748(0x1e4))[callback_0xa80748(0x1dd)];
    // let _0x3761f8 = document['getElementById'](input)[value];
    for (let i_0x16c626 = 0x0; i_0x16c626 < input_0x3761f8['length']; i_0x16c626++) {
        exports[callback_0xa80748(0x1d7)](input_0x3761f8[callback_0xa80748(0x1ec)](i_0x16c626), i_0x16c626);
        // exports['copy_char'](input['charCodeAt'](i), i)
    }
    exports['copy_char'](0x0, input_0x3761f8['length']),
    exports[callback_0xa80748(0x1e7)]() == 0x1 ? document[callback_0xa80748(0x1ee)](callback_0xa80748(0x1dc))[callback_0xa80748(0x1e1)] = callback_0xa80748(0x1e6) : document[callback_0xa80748(0x1ee)](callback_0xa80748(0x1dc))[callback_0xa80748(0x1e1)] = callback_0xa80748(0x1e8);
}

