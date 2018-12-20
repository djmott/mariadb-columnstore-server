exec_program("git"
    ${CMAKE_CURRENT_SOURCE_DIR}
    ARGS "describe --match=NeVeRmAtCh --always --dirty"
    OUTPUT_VARIABLE GIT_VERSION)

CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/cmake/gitversionServer.in ${CMAKE_CURRENT_BINARY_DIR}/gitversionServer IMMEDIATE)
INSTALL(FILES ${CMAKE_CURRENT_BINARY_DIR}/gitversionServer DESTINATION ${CMAKE_INSTALL_PREFIX} COMPONENT Server)

