GETQUESTION = jq '.question' -r $<
GETCODE = jq '.code' -r $<

build:
	mkdir -p $@

build/one.question.json: build
	curl --location --silent http://minisculuschallenge.com/start -o $@
  
build/one.answer.json: build/one.question.json
	$(GETQUESTION) | echo "{\"answer\":\"$$(printf "%q" $$(./questions/one.apl -- 6))\"}" > $@

build/two.question.json: build/one.answer.json
	wget --method PUT --body-file $< http://minisculuschallenge.com/14f7ca5f6ff1a5afb9032aa5e533ad95 -O $@

build/two.answer.json: build/two.question.json
	$(GETQUESTION) | echo "{\"answer\":\"$$(./questions/two.apl -- 9 3)\"}" > $@

build/three.question.json: build/two.answer.json
	wget --method PUT --body-file $< http://minisculuschallenge.com/2077f244def8a70e5ea758bd8352fcd8 -O $@

build/three.answer.json: build/three.question.json
	$(GETQUESTION) | echo "{\"answer\":\"$$(./questions/three.apl -- 4 7 | sed 's/\"/\\"/g')\"}" > $@

build/four.question.json: build/three.answer.json
	wget --method PUT --body-file $< http://minisculuschallenge.com/36d80eb0c50b49a509b49f2424e8c805 -O $@

build/four.answer.json: build/four.question.json
	$(GETQUESTION) | echo "{\"answer\":\"$$(./questions/four.apl -- 7 2 | sed 's/\"/\\"/g')\"}" > $@

build/final.question.json: build/four.answer.json
	wget --method PUT --body-file $< http://minisculuschallenge.com/4baecf8ca3f98dc13eeecbac263cd3ed -O $@

build/final.answer.json: build/final.question.json
	$(GETCODE) | echo "{\"answer\":\"$$(./questions/final.apl -- 7 2 | sed 's/\"/\\"/g')\"}" > $@

all: build/final.answer.json

clean:
	rm -rf build
