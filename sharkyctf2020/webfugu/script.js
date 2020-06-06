async function populateList() {
    let b64ListContent = "PGRpdj4gPHRhYmxlIGJvcmRlcj0iMSI%2BIDx0cj4gPHRoPk5hbWU8L3RoPiA8dGg%2BRGlzY292ZXJ5IHllYXI8L3RoPiA8dGg%2BRGlzY292ZXJlciBuYW1lPC90aD4gPC90cj4gPHRyIHRoOmVhY2ggPSJmaXNoIDogJHtmaXNoZXN9Ij4gPHRkIHRoOnV0ZXh0PSIke2Zpc2gubmFtZX0iPi4uLjwvdGQ%2BIDx0ZCB0aDp1dGV4dD0iJHtmaXNoLmRpc2NvdmVyeVllYXJ9Ij4uLi48L3RkPiA8dGQgdGg6dXRleHQ9IiR7ZmlzaC5kaXNjb3ZlcmVyTmFtZX0iPi4uLjwvdGQ%2BIDwvdHI%2BIDwvdGFibGU%2BIDwvZGl2PiAgICAgIAo=";
    let renderURL = "/process";

    let listContent = await fetch(location.origin+renderURL+"?page="+b64ListContent).then(res=>res.text());
}
populateList();
