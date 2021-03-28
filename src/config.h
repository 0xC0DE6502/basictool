#ifndef CONFIG_H
#define CONFIG_H

#include <stdbool.h>

struct s_config {
    int verbose;
    bool filter;
    bool strip_leading_spaces;
    bool strip_trailing_spaces;
    bool pack;
    bool tokenise_output;
};

extern struct s_config config;

#endif
