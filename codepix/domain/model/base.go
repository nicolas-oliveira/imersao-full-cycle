package model

import (
	"time"

	"github.com/asaskevich/govalidator"
)

func init() {
	govalidator.SetFieldsRequiredByDefault(true)
}

type Base struct {
	ID        string    `json:"id" valid:"uuid"`
	CreatedAt time.Time `json:"CreatedAt" valid:"-"`
	UpdatedAt time.Time `json:"UpdatedAt" valid:"-"`
}
