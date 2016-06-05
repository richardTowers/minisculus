GETQUESTION = grep -o '"question":[^,}]\+' $< | cut -d: -f2 | cut -d '"' -f2

build:
	mkdir -p $@

build/one.question.json: build
	curl --location --silent http://minisculuschallenge.com/start -o $@
  
build/one.answer.json: build/one.question.json
	$(GETQUESTION) | echo "{\"answer\":\"$$(printf "%q" $$(./questions/one.apl -- 6))\"}" > $@

build/two.question.json: build/one.answer.json
	wget --method PUT --body-file $< "http://minisculuschallenge.com$$(curl --silent --verbose http://minisculuschallenge.com/start 2>&1 | grep Location | cut -d: -f2 | tr -d ' ' | tr -d "\r")" -O $@

build/two.answer.json: build/two.question.json
	$(GETQUESTION) | echo "{\"answer\":\"$$(printf "%q" $$(./questions/two.apl -- 9 3))\"}" > $@

all: build/two.answer.json

clean:
	rm -rf build
