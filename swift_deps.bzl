load("@rules_swift_package_manager//swiftpkg:defs.bzl", "swift_package")

def swift_dependencies():
    # version: 1.16.0
    swift_package(
        name = "swiftpkg_grpc_swift",
        commit = "4ab02e1ae5b4dfdd723773e955b62f35ccbaa7c7",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/grpc/grpc-swift.git",
    )

    # version: 1.1.0
    swift_package(
        name = "swiftpkg_swift_atomics",
        commit = "6c89474e62719ddcc1e9614989fff2f68208fe10",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-atomics.git",
    )

    # version: 1.0.4
    swift_package(
        name = "swiftpkg_swift_collections",
        commit = "937e904258d22af6e447a0b72c0bc67583ef64a2",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-collections.git",
    )

    # version: 1.5.2
    swift_package(
        name = "swiftpkg_swift_log",
        commit = "32e8d724467f8fe623624570367e3d50c5638e46",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-log.git",
    )

    # version: 2.53.0
    swift_package(
        name = "swiftpkg_swift_nio",
        commit = "2d8e6ca36fe3e8ed74b0883f593757a45463c34d",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio.git",
    )

    # version: 1.19.0
    swift_package(
        name = "swiftpkg_swift_nio_extras",
        commit = "0e0d0aab665ff1a0659ce75ac003081f2b1c8997",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-extras.git",
    )

    # version: 1.26.0
    swift_package(
        name = "swiftpkg_swift_nio_http2",
        commit = "6d021a48483dbb273a9be43f65234bdc9185b364",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-http2.git",
    )

    # version: 2.24.0
    swift_package(
        name = "swiftpkg_swift_nio_ssl",
        commit = "e866a626e105042a6a72a870c88b4c531ba05f83",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-ssl.git",
    )

    # version: 1.17.0
    swift_package(
        name = "swiftpkg_swift_nio_transport_services",
        commit = "41f4098903878418537020075a4d8a6e20a0b182",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-transport-services.git",
    )

    # version: 1.21.0
    swift_package(
        name = "swiftpkg_swift_protobuf",
        commit = "0af9125c4eae12a4973fb66574c53a54962a9e1e",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-protobuf.git",
    )
