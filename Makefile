NAME = saghul/sylk-in-a-box
VERSION = 0.1.0


.PHONY: all build run

all: build

build:
	docker build -t $(NAME):$(VERSION) .

run:
	-docker run -p 3000:3000 -p 10888:10888 --rm -t -i $(NAME):$(VERSION) /sbin/my_init -- bash -l