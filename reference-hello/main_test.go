package main

import "testing"

func TestGreeting(t *testing.T) {
	tests := []struct {
		name string
		want string
	}{
		{name: "reference scenario greeting", want: "hello from the 38890 reference scenario"},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := greeting(); got != tt.want {
				t.Errorf("greeting() = %q, want %q", got, tt.want)
			}
		})
	}
}
