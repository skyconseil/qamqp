
PRIVATE_HEADERS += \
    src/qamqpchannel_p.h \
    src/qamqpchannelhash_p.h \
    src/qamqpclient_p.h \
    src/qamqpexchange_p.h \
    src/qamqpframe_p.h \
    src/qamqpmessage_p.h \
    src/qamqpqueue_p.h

INSTALL_HEADERS += \
    src/qamqpauthenticator.h \
    src/qamqpchannel.h \
    src/qamqpclient.h \
    src/qamqpexchange.h \
    src/qamqpglobal.h \
    src/qamqpmessage.h \
    src/qamqpqueue.h \
    src/qamqptable.h

HEADERS += \
    $${INSTALL_HEADERS} \
    $${PRIVATE_HEADERS}

SOURCES += \
    src/qamqpauthenticator.cpp \
    src/qamqpchannel.cpp \
    src/qamqpchannelhash.cpp \
    src/qamqpclient.cpp \
    src/qamqpexchange.cpp \
    src/qamqpframe.cpp \
    src/qamqpmessage.cpp \
    src/qamqpqueue.cpp \
    src/qamqptable.cpp
