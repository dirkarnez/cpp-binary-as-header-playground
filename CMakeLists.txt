cmake_minimum_required(VERSION 3.18)

project("cpp-binary-as-header-playground")

# find_package(portaudio 19 EXACT REQUIRED) # PATHS "P:\\Downloads\\cpp-libraries\\portaudio\\build\\cmake\\portaudio")

# if(portaudio_FOUND)
#     message(STATUS "YES")
# else()
#     message(STATUS "NO")
# endif()

# COMMAND " "

add_executable(${PROJECT_NAME}
    "src/image.h"
    "src/main.cpp"
)

# target_link_libraries(${PROJECT_NAME} portaudio_static)
target_link_options(${PROJECT_NAME} PRIVATE "-static")


add_custom_command(TARGET ${PROJECT_NAME} PRE_BUILD
                COMMAND bin2header --output src\\image.h assets\\GitHub-logo.jpg
                WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
                COMMENT "Generating headers from binary...")