package types

import (
	"strings"
	"testing"

	"github.com/vincent-petithory/dataurl"
)

func TestDataURL(t *testing.T) {
	testString1 := "hello world"
	dataUrl1 := makeDataUrl([]byte(testString1))
	decodedUrl1, err := dataurl.DecodeString(dataUrl1)
	if err != nil {
		t.Fatalf("DecodeString #1 failed: %v", err)
	}
	resultStr1 := string(decodedUrl1.Data)
	if strings.HasPrefix(dataUrl1, "data:;base64,") {
		t.Errorf("base64 encoding used instead of url encoding: %v", dataUrl1)
	}
	if resultStr1 != testString1 {
		t.Errorf("wanted %v, got %v", testString1, resultStr1)
	}

	testString2 := `
#!/bin/bash
msg="hello"
f() {
	( echo "${msg}" ) &
}
f`
	dataUrl2 := makeDataUrl([]byte(testString2))
	if !strings.HasPrefix(dataUrl2, "data:;base64,") {
		t.Errorf("base64 encoding missing: %v", dataUrl2)
	}
	decodedUrl2, err := dataurl.DecodeString(dataUrl2)
	if err != nil {
		t.Fatalf("DecodeString #2 failed: %v", err)
	}
	resultStr2 := string(decodedUrl2.Data)
	if resultStr2 != testString2 {
		t.Errorf("wanted %v, got %v", testString2, resultStr2)
	}
}
