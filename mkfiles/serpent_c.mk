# Makefile for serpent
ALGO_NAME := SERPENT_C

# comment out the following line for removement of serpent from the build process
BLOCK_CIPHERS += $(ALGO_NAME)


$(ALGO_NAME)_OBJ      := serpent.o serpent-sboxes_c.o memxor.o
$(ALGO_NAME)_TEST_BIN := main-serpent-test.o $(CLI_STD)  \
                         nessie_bc_test.o nessie_common.o performance_test.o
$(ALGO_NAME)_NESSIE_TEST      := "nessie"
$(ALGO_NAME)_PERFORMANCE_TEST := "performance"

