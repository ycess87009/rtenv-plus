#ifndef UNIT_TEST_H
#define UNIT_TEST_H
/*
#define HISTORY_COUNT 20
#define CMDBUF_SIZE 100
#define MAX_ENVCOUNT 30
#define MAX_ENVNAME 15
#define MAX_ENVVALUE 127

typedef enum {
	CMD_ECHO = 0,
	CMD_EXPORT,
	CMD_HELP,
	CMD_HISTORY,
	CMD_MAN,
	CMD_PS,
	CMD_XXD,
	CMD_LS,
	CMD_CAT,
	CMD_COUNT
} CMD_TYPE;

typedef struct {
	char name[MAX_ENVNAME + 1];
	char value[MAX_ENVVALUE + 1];
} evar_entry;



extern char cmd[HISTORY_COUNT][CMDBUF_SIZE];
extern int cur_his;

extern evar_entry env_var[MAX_ENVCOUNT];
extern int env_count;
*/
void unit_test();

#endif
