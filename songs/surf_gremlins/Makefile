job-count ?= $(shell nproc)

loglevel ?= info

prefix ?= $(CURDIR)

lilypondFlags ?= \
--loglevel=${loglevel} \
-djob-count=${job-count} \
-dlog-file=${prefix}/$(basename $(@F)) \
-dmidi-extension=mid \
-dno-point-and-click \
-drelative-includes \
-dwarning-as-error

pdfName ?= main

.PHONY: all
all: install

.PHONY: install
install: ${prefix}/${pdfName}.pdf

${prefix}/${pdfName}.pdf: main.ly notes/* parts/*
	lilypond ${lilypondFlags} --pdf -o ${prefix}/${pdfName} $< ${output}
