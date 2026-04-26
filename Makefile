.PHONY: build check examples

build:
	quarkdown compile main.qd

examples:
	for file in examples/*.ua; do uiua run "$$file" >/dev/null; done

check:
	sh tools/check.sh
