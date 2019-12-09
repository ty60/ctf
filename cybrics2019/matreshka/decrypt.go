
package main

import "fmt"
import "crypto/rc4"


func main() {
    key := []byte{0x1, 0x3, 0x3, 0x7, 0x3, 0x3, 0x8, 0x1}
    c, _ := rc4.NewCipher(key)

    var src []byte
    src = make([]byte,5)
    copy(src[:],"pedia")
    fmt.Printf("src=% x\n",src)
    c.XORKeyStream(src, src)
    fmt.Printf("after coding, src=% x\n",src)
    c.XORKeyStream(src, src)
    fmt.Printf("after decoding, src=% x\n",src)
}

