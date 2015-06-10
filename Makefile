# This Makefile was generated by the Cake3
# https://github.com/grwlf/cake3

GUARD = .cake3/GUARD_$(1)_$(shell echo $($(1)) | md5sum | cut -d ' ' -f 1)

ifeq ($(MAIN),1)
unexport MAIN

# Main section

URWEB = urweb
UWFLAGS = 
UWINCLUDEDIR = $(shell $(URWEB) -print-cinclude)/..
UWVER = $(shell $(URWEB) -version)
.PHONY: ./all
./all: ./Makefile ./lib.urp ./test/Test4.exe ./test/Test4.sql ./test/TestError1.exe ./test/TestError1.sql ./test/TestState1.exe ./test/TestState1.sql ./test/TestState2.exe ./test/TestState2.sql ./test/TestState3.exe ./test/TestState3.sql ./test/XmlGenDemo.exe ./test/XmlGenDemo.sql
./.cake3/tmp___lib_in_2: ./Makefile ./error.ur ./identity.ur ./pure.ur ./state.ur
	( \
	echo   ;\
	echo \.\/error  ;\
	echo \.\/state  ;\
	echo \.\/identity  ;\
	echo \.\/pure  ;\
	) > ./.cake3/tmp___lib_in_2
./.cake3/tmp___lib_in_1: ./Makefile ./error.ur ./identity.ur ./pure.ur ./state.ur
	echo -n > ./.cake3/tmp___lib_in_1
.PHONY: ./lib
./lib: ./Makefile ./lib.urp
.PHONY: ./run
./run: ./Makefile ./test/XmlGenDemo.exe ./test/XmlGenDemo.sql
	./test/XmlGenDemo.exe
./.cake3/tmp___test_XmlGenDemo_in_2: ./Makefile ./lib.urp ./test/XmlGenDemo.ur
	( \
	echo   ;\
	echo $$\/option  ;\
	echo $$\/list  ;\
	echo \.\.\/test\/XmlGenDemo  ;\
	) > ./.cake3/tmp___test_XmlGenDemo_in_2
./.cake3/tmp___test_XmlGenDemo_in_1: ./Makefile ./lib.urp ./test/XmlGenDemo.ur
	( \
	echo database\ dbname\=XmlGenDemo\.db  ;\
	echo sql\ \.\.\/test\/XmlGenDemo\.sql  ;\
	echo library\ \.\.\/  ;\
	) > ./.cake3/tmp___test_XmlGenDemo_in_1
./.cake3/tmp___test_TestState3_in_2: ./Makefile ./lib.urp ./test/TestState3.ur
	( \
	echo   ;\
	echo $$\/option  ;\
	echo $$\/list  ;\
	echo \.\.\/test\/TestState3  ;\
	) > ./.cake3/tmp___test_TestState3_in_2
./.cake3/tmp___test_TestState3_in_1: ./Makefile ./lib.urp ./test/TestState3.ur
	( \
	echo database\ dbname\=TestState3\.db  ;\
	echo sql\ \.\.\/test\/TestState3\.sql  ;\
	echo library\ \.\.\/  ;\
	) > ./.cake3/tmp___test_TestState3_in_1
./.cake3/tmp___test_TestState2_in_2: ./Makefile ./lib.urp ./test/TestState2.ur
	( \
	echo   ;\
	echo $$\/option  ;\
	echo $$\/list  ;\
	echo \.\.\/test\/TestState2  ;\
	) > ./.cake3/tmp___test_TestState2_in_2
./.cake3/tmp___test_TestState2_in_1: ./Makefile ./lib.urp ./test/TestState2.ur
	( \
	echo database\ dbname\=TestState2\.db  ;\
	echo sql\ \.\.\/test\/TestState2\.sql  ;\
	echo library\ \.\.\/  ;\
	) > ./.cake3/tmp___test_TestState2_in_1
./.cake3/tmp___test_TestState1_in_2: ./Makefile ./lib.urp ./test/TestState1.ur
	( \
	echo   ;\
	echo $$\/option  ;\
	echo $$\/list  ;\
	echo \.\.\/test\/TestState1  ;\
	) > ./.cake3/tmp___test_TestState1_in_2
./.cake3/tmp___test_TestState1_in_1: ./Makefile ./lib.urp ./test/TestState1.ur
	( \
	echo database\ dbname\=TestState1\.db  ;\
	echo sql\ \.\.\/test\/TestState1\.sql  ;\
	echo library\ \.\.\/  ;\
	) > ./.cake3/tmp___test_TestState1_in_1
./.cake3/tmp___test_TestError1_in_2: ./Makefile ./lib.urp ./test/TestError1.ur
	( \
	echo   ;\
	echo $$\/option  ;\
	echo $$\/list  ;\
	echo \.\.\/test\/TestError1  ;\
	) > ./.cake3/tmp___test_TestError1_in_2
./.cake3/tmp___test_TestError1_in_1: ./Makefile ./lib.urp ./test/TestError1.ur
	( \
	echo database\ dbname\=TestError1\.db  ;\
	echo sql\ \.\.\/test\/TestError1\.sql  ;\
	echo library\ \.\.\/  ;\
	) > ./.cake3/tmp___test_TestError1_in_1
./.cake3/tmp___test_Test4_in_2: ./Makefile ./lib.urp ./test/Test4.ur
	( \
	echo   ;\
	echo $$\/option  ;\
	echo $$\/list  ;\
	echo \.\.\/test\/Test4  ;\
	) > ./.cake3/tmp___test_Test4_in_2
./.cake3/tmp___test_Test4_in_1: ./Makefile ./lib.urp ./test/Test4.ur
	( \
	echo database\ dbname\=Test4\.db  ;\
	echo sql\ \.\.\/test\/Test4\.sql  ;\
	echo library\ \.\.\/  ;\
	) > ./.cake3/tmp___test_Test4_in_1
.INTERMEDIATE: ./.fix-multy1
./.fix-multy1: ./Makefile ./test/Test4.urp $(call GUARD,URWEB) $(call GUARD,UWFLAGS) $(call GUARD,UWINCLUDEDIR) $(call GUARD,UWVER)
	C_INCLUDE_PATH=$(UWINCLUDEDIR) $(URWEB) -dbms sqlite $(UWFLAGS) ./test/Test4
.INTERMEDIATE: ./.fix-multy2
./.fix-multy2: ./Makefile ./test/TestError1.urp $(call GUARD,URWEB) $(call GUARD,UWFLAGS) $(call GUARD,UWINCLUDEDIR) $(call GUARD,UWVER)
	C_INCLUDE_PATH=$(UWINCLUDEDIR) $(URWEB) -dbms sqlite $(UWFLAGS) ./test/TestError1
.INTERMEDIATE: ./.fix-multy3
./.fix-multy3: ./Makefile ./test/TestState1.urp $(call GUARD,URWEB) $(call GUARD,UWFLAGS) $(call GUARD,UWINCLUDEDIR) $(call GUARD,UWVER)
	C_INCLUDE_PATH=$(UWINCLUDEDIR) $(URWEB) -dbms sqlite $(UWFLAGS) ./test/TestState1
.INTERMEDIATE: ./.fix-multy4
./.fix-multy4: ./Makefile ./test/TestState2.urp $(call GUARD,URWEB) $(call GUARD,UWFLAGS) $(call GUARD,UWINCLUDEDIR) $(call GUARD,UWVER)
	C_INCLUDE_PATH=$(UWINCLUDEDIR) $(URWEB) -dbms sqlite $(UWFLAGS) ./test/TestState2
.INTERMEDIATE: ./.fix-multy5
./.fix-multy5: ./Makefile ./test/TestState3.urp $(call GUARD,URWEB) $(call GUARD,UWFLAGS) $(call GUARD,UWINCLUDEDIR) $(call GUARD,UWVER)
	C_INCLUDE_PATH=$(UWINCLUDEDIR) $(URWEB) -dbms sqlite $(UWFLAGS) ./test/TestState3
.INTERMEDIATE: ./.fix-multy6
./.fix-multy6: ./Makefile ./test/XmlGenDemo.urp $(call GUARD,URWEB) $(call GUARD,UWFLAGS) $(call GUARD,UWINCLUDEDIR) $(call GUARD,UWVER)
	C_INCLUDE_PATH=$(UWINCLUDEDIR) $(URWEB) -dbms sqlite $(UWFLAGS) ./test/XmlGenDemo
./lib.urp: ./.cake3/tmp___lib_in_1 ./.cake3/tmp___lib_in_2 ./Makefile
	cat ./.cake3/tmp___lib_in_1 > ./lib.urp
	cat ./.cake3/tmp___lib_in_2 >> ./lib.urp
./test/Test4.exe: ./.fix-multy1
./test/Test4.sql: ./.fix-multy1
./test/Test4.urp: ./.cake3/tmp___test_Test4_in_1 ./.cake3/tmp___test_Test4_in_2 ./Makefile
	cat ./.cake3/tmp___test_Test4_in_1 > ./test/Test4.urp
	cat ./.cake3/tmp___test_Test4_in_2 >> ./test/Test4.urp
./test/TestError1.exe: ./.fix-multy2
./test/TestError1.sql: ./.fix-multy2
./test/TestError1.urp: ./.cake3/tmp___test_TestError1_in_1 ./.cake3/tmp___test_TestError1_in_2 ./Makefile
	cat ./.cake3/tmp___test_TestError1_in_1 > ./test/TestError1.urp
	cat ./.cake3/tmp___test_TestError1_in_2 >> ./test/TestError1.urp
./test/TestState1.exe: ./.fix-multy3
./test/TestState1.sql: ./.fix-multy3
./test/TestState1.urp: ./.cake3/tmp___test_TestState1_in_1 ./.cake3/tmp___test_TestState1_in_2 ./Makefile
	cat ./.cake3/tmp___test_TestState1_in_1 > ./test/TestState1.urp
	cat ./.cake3/tmp___test_TestState1_in_2 >> ./test/TestState1.urp
./test/TestState2.exe: ./.fix-multy4
./test/TestState2.sql: ./.fix-multy4
./test/TestState2.urp: ./.cake3/tmp___test_TestState2_in_1 ./.cake3/tmp___test_TestState2_in_2 ./Makefile
	cat ./.cake3/tmp___test_TestState2_in_1 > ./test/TestState2.urp
	cat ./.cake3/tmp___test_TestState2_in_2 >> ./test/TestState2.urp
./test/TestState3.exe: ./.fix-multy5
./test/TestState3.sql: ./.fix-multy5
./test/TestState3.urp: ./.cake3/tmp___test_TestState3_in_1 ./.cake3/tmp___test_TestState3_in_2 ./Makefile
	cat ./.cake3/tmp___test_TestState3_in_1 > ./test/TestState3.urp
	cat ./.cake3/tmp___test_TestState3_in_2 >> ./test/TestState3.urp
./test/XmlGenDemo.exe: ./.fix-multy6
./test/XmlGenDemo.sql: ./.fix-multy6
./test/XmlGenDemo.urp: ./.cake3/tmp___test_XmlGenDemo_in_1 ./.cake3/tmp___test_XmlGenDemo_in_2 ./Makefile
	cat ./.cake3/tmp___test_XmlGenDemo_in_1 > ./test/XmlGenDemo.urp
	cat ./.cake3/tmp___test_XmlGenDemo_in_2 >> ./test/XmlGenDemo.urp
$(call GUARD,URWEB):
	rm -f .cake3/GUARD_URWEB_*
	touch $@
$(call GUARD,UWFLAGS):
	rm -f .cake3/GUARD_UWFLAGS_*
	touch $@
$(call GUARD,UWINCLUDEDIR):
	rm -f .cake3/GUARD_UWINCLUDEDIR_*
	touch $@
$(call GUARD,UWVER):
	rm -f .cake3/GUARD_UWVER_*
	touch $@

else

# Prebuild/postbuild section

ifneq ($(MAKECMDGOALS),clean)

.PHONY: ./all
./all: ./.fix-multy1
.PHONY: ./.cake3/tmp___lib_in_2
./.cake3/tmp___lib_in_2: ./.fix-multy1
.PHONY: ./.cake3/tmp___lib_in_1
./.cake3/tmp___lib_in_1: ./.fix-multy1
.PHONY: ./lib
./lib: ./.fix-multy1
.PHONY: ./run
./run: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_XmlGenDemo_in_2
./.cake3/tmp___test_XmlGenDemo_in_2: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_XmlGenDemo_in_1
./.cake3/tmp___test_XmlGenDemo_in_1: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_TestState3_in_2
./.cake3/tmp___test_TestState3_in_2: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_TestState3_in_1
./.cake3/tmp___test_TestState3_in_1: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_TestState2_in_2
./.cake3/tmp___test_TestState2_in_2: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_TestState2_in_1
./.cake3/tmp___test_TestState2_in_1: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_TestState1_in_2
./.cake3/tmp___test_TestState1_in_2: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_TestState1_in_1
./.cake3/tmp___test_TestState1_in_1: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_TestError1_in_2
./.cake3/tmp___test_TestError1_in_2: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_TestError1_in_1
./.cake3/tmp___test_TestError1_in_1: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_Test4_in_2
./.cake3/tmp___test_Test4_in_2: ./.fix-multy1
.PHONY: ./.cake3/tmp___test_Test4_in_1
./.cake3/tmp___test_Test4_in_1: ./.fix-multy1
.INTERMEDIATE: ./.fix-multy1
./.fix-multy1:
	-mkdir .cake3
	MAIN=1 $(MAKE) -f ./Makefile $(MAKECMDGOALS)
.PHONY: ./lib.urp
./lib.urp: ./.fix-multy1
.PHONY: ./test/Test4.exe
./test/Test4.exe: ./.fix-multy1
.PHONY: ./test/Test4.sql
./test/Test4.sql: ./.fix-multy1
.PHONY: ./test/Test4.urp
./test/Test4.urp: ./.fix-multy1
.PHONY: ./test/TestError1.exe
./test/TestError1.exe: ./.fix-multy1
.PHONY: ./test/TestError1.sql
./test/TestError1.sql: ./.fix-multy1
.PHONY: ./test/TestError1.urp
./test/TestError1.urp: ./.fix-multy1
.PHONY: ./test/TestState1.exe
./test/TestState1.exe: ./.fix-multy1
.PHONY: ./test/TestState1.sql
./test/TestState1.sql: ./.fix-multy1
.PHONY: ./test/TestState1.urp
./test/TestState1.urp: ./.fix-multy1
.PHONY: ./test/TestState2.exe
./test/TestState2.exe: ./.fix-multy1
.PHONY: ./test/TestState2.sql
./test/TestState2.sql: ./.fix-multy1
.PHONY: ./test/TestState2.urp
./test/TestState2.urp: ./.fix-multy1
.PHONY: ./test/TestState3.exe
./test/TestState3.exe: ./.fix-multy1
.PHONY: ./test/TestState3.sql
./test/TestState3.sql: ./.fix-multy1
.PHONY: ./test/TestState3.urp
./test/TestState3.urp: ./.fix-multy1
.PHONY: ./test/XmlGenDemo.exe
./test/XmlGenDemo.exe: ./.fix-multy1
.PHONY: ./test/XmlGenDemo.sql
./test/XmlGenDemo.sql: ./.fix-multy1
.PHONY: ./test/XmlGenDemo.urp
./test/XmlGenDemo.urp: ./.fix-multy1

endif
.PHONY: ./clean
./clean:
	-rm ./.cake3/tmp___lib_in_1 ./.cake3/tmp___lib_in_2 ./.cake3/tmp___test_Test4_in_1 ./.cake3/tmp___test_Test4_in_2 ./.cake3/tmp___test_TestError1_in_1 ./.cake3/tmp___test_TestError1_in_2 ./.cake3/tmp___test_TestState1_in_1 ./.cake3/tmp___test_TestState1_in_2 ./.cake3/tmp___test_TestState2_in_1 ./.cake3/tmp___test_TestState2_in_2 ./.cake3/tmp___test_TestState3_in_1 ./.cake3/tmp___test_TestState3_in_2 ./.cake3/tmp___test_XmlGenDemo_in_1 ./.cake3/tmp___test_XmlGenDemo_in_2 ./lib.urp ./test/Test4.exe ./test/Test4.sql ./test/Test4.urp ./test/TestError1.exe ./test/TestError1.sql ./test/TestError1.urp ./test/TestState1.exe ./test/TestState1.sql ./test/TestState1.urp ./test/TestState2.exe ./test/TestState2.sql ./test/TestState2.urp ./test/TestState3.exe ./test/TestState3.sql ./test/TestState3.urp ./test/XmlGenDemo.exe ./test/XmlGenDemo.sql ./test/XmlGenDemo.urp
	-rm -rf .cake3

endif
