<?php
sleep(1);

function connect_to_database() {
  $link = mysqli_connect("web4-mariadb", "ctfuser", "dhY#OThsdivojq2", "ASISCTF");
  if (!$link) {
    echo "Error: Unable to connect to DB.";
    exit;
  }
  return $link;
}

function fetch_books($condition) {
  $link = connect_to_database();
  if ($condition === "") {
    $where_condition = "";
  } else {
    $where_condition = "WHERE $condition";
  }
  $query = "SELECT info FROM books $where_condition";
  if ($result = mysqli_query($link, $query, MYSQLI_USE_RESULT)) {
    $books_info = array();
    while($row = $result->fetch_array(MYSQLI_NUM)) {
      $books_info[] = (string) $row[0];
    }
    mysqli_free_result($result);
  }
  mysqli_close($link);
  return $books_info;
}

function xml2array($xml) {
  return array(
    'id' => (string) $xml->id,
    'name' => (string) $xml->name,
    'author' => (string) $xml->author,
    'year' => (string) $xml->year,
    'link' => (string) $xml->link
  );
}

function get_all_books() {
  $books = array();
  $books_info = fetch_books("");
  foreach ($books_info as $info) {
    $xml = simplexml_load_string($info, 'SimpleXMLElement', LIBXML_NOENT);
    $books[] = xml2array($xml);
  }
  return $books;
}

function find_book($condition) {
  $book_info = fetch_books($condition)[0];
  $xml = simplexml_load_string($book_info, 'SimpleXMLElement', LIBXML_NOENT);
  return $xml;
}

$type = @$_GET["type"];
if ($type === "list") {
  $books = get_all_books();
  echo json_encode($books);

} elseif ($type === "excerpt") {
  $id = @$_GET["id"];
  $book = find_book("id='$id'");
  $bookExcerpt = $book->excerpt;
  echo $bookExcerpt;

} else {
  echo "Invalid type";
}
