package test

import "time"

func ParseRFC3339ToUnix(timeString string) (int64, error) {
	loc, _ := time.LoadLocation("Asia/Shanghai")
	t, err := time.ParseInLocation("2006-01-02T15:04:05Z07:00", timeString, loc)
	if err != nil {
		return 0, err
	}
	return t.Unix() * 1000, nil
}

//将RFC3339解析成固定格式的字符串
func ParseRFC3339ToStr(timeString, formatString string) (string, error) {
	t, err := time.Parse(
		time.RFC3339,
		timeString)
	if err != nil {
		return "", err
	}
	return t.Format(formatString), nil
}
