#/**********************************************************\ 
# Auto-generated Mac project definition file for the
# gpgAuth project
#\**********************************************************/

# Mac template platform definition CMake file
# Included from ../CMakeLists.txt

# remember that the current source dir is the project root; this file is in Mac/
file (GLOB PLATFORM RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
    Mac/[^.]*.cpp
    Mac/[^.]*.h
    Mac/[^.]*.cmake
    )

# use this to add preprocessor definitions
add_definitions(
    -DCMAKE_OSX_ARCHITECTURES=i386
)

SOURCE_GROUP(Mac FILES ${PLATFORM})

set (SOURCES
    ${SOURCES}
    ${PLATFORM}
    )

set(PLIST "Mac/bundle_template/Info.plist")
set(STRINGS "Mac/bundle_template/InfoPlist.strings")
set(LOCALIZED "Mac/bundle_template/Localized.r")

add_mac_plugin(${PROJNAME} ${PLIST} ${STRINGS} ${LOCALIZED} SOURCES)
    
# add library dependencies here; leave ${PLUGIN_INTERNAL_DEPS} there unless you know what you're doing!
target_link_libraries(${PROJNAME}
    ${PLUGIN_INTERNAL_DEPS}
    -L/opt/local/var/macports/software/gpgme/1.2.0_0/opt/local/lib/
    -L/opt/local/var/macports/software/libgpg-error/1.9_0/opt/local/lib/
    -I/usr/include/
    -I/opt/local/var/macports/software/libgpg-error/1.9_0/opt/local/include/
    -I/opt/local/var/macports/software/gpgme/1.2.0_0/opt/local/include/
    -lgpgme
    -lgpg-error
    )

add_dependencies(${PROJNAME}
    ${PLUGIN_INTERNAL_DEPS}
    )
