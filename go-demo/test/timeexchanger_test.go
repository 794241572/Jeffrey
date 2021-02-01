package test

import (
	"reflect"
	"testing"
)

func Test_ParseRFC3339ToUnix(t *testing.T) {
	tests := []struct {
		name    string
		timestr string
		wantErr bool
		want    int64
	}{
		{
			name:    "ok",
			timestr: "2020-11-02T14:31:38+08:00",
			want:    1604298698000,
		},
		{
			name:    "parse err",
			timestr: "ssss",
			wantErr: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := ParseRFC3339ToUnix(tt.timestr)
			if (err != nil) != tt.wantErr {
				t.Errorf("Test_ParseRFC3339ToUnix() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("Test_ParseRFC3339ToUnix() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_ParseRFC3339ToStr(t *testing.T) {
	tests := []struct {
		name         string
		timestr      string
		formatString string
		wantErr      bool
		want         string
	}{
		{
			name:         "ok",
			timestr:      "2020-01-01T01:01:01+08:00",
			formatString: "20060102150405",
			want:         "20200101010101",
		},
		{
			name:    "parse err",
			timestr: "ssss",
			wantErr: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := ParseRFC3339ToStr(tt.timestr, tt.formatString)
			if (err != nil) != tt.wantErr {
				t.Errorf("Test_ParseRFC3339ToStr() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("Test_ParseRFC3339ToStr() = %v, want %v", got, tt.want)
			}
		})
	}
}
