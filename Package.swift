// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "GRPCTest",
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio-ssl.git", exact: "2.23.0"),
        .package(url: "https://github.com/grpc/grpc-swift.git", exact: "1.16.0")
    ],
    targets: [
        .target(
            name: "examples_xplatform_grpc_echo_client",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift"),
                .target(name: "examples_xplatform_grpc_echo_proto"),
                .target(name: "examples_xplatform_grpc_echo_client_services_swift")
            ],
            path: "examples/xplatform/examples_xplatform_grpc_echo_client",
            exclude: ["BUILD.bazel"]
        ),
        .target(
            name: "examples_xplatform_grpc_echo_client_services_swift",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift"),
                .target(name: "examples_xplatform_grpc_echo_proto")
            ],
            path: "examples/xplatform/examples_xplatform_grpc_echo_client_services_swift",
            exclude: ["BUILD.bazel"]
        ),
        .target(
            name: "examples_xplatform_grpc_echo_server_services_swift",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift"),
                .target(name: "examples_xplatform_grpc_echo_proto")
            ],
            path: "examples/xplatform/examples_xplatform_grpc_echo_server_services_swift",
            exclude: ["BUILD.bazel"]
        ),
        .target(
            name: "examples_xplatform_grpc_echo_client_test_stubs_swift",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift"),
                .target(name: "examples_xplatform_grpc_echo_proto"),
                .target(name: "examples_xplatform_grpc_echo_client_services_swift")
            ],
            path: "examples/xplatform/examples_xplatform_grpc_echo_client_test_stubs_swift",
            exclude: ["BUILD.bazel"]
        ),
        .testTarget(
            name: "examples_xplatform_grpc_echo_client_unit_test",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift"),
                .target(name: "examples_xplatform_grpc_echo_proto"),
                .target(name: "examples_xplatform_grpc_echo_client_services_swift"),
                .target(name: "examples_xplatform_grpc_echo_server_services_swift"),
            ],
            path: "examples/xplatform/examples_xplatform_grpc_echo_client_unit_test",
            exclude: [
                "BUILD.bazel",
                "main.swift"
            ]
        ),
        .target(
            name: "examples_xplatform_grpc_echo_proto",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift")
            ],
            path: "examples/xplatform/examples_xplatform_grpc_echo_proto",
            exclude: ["BUILD.bazel"]
        ),

        // .testTarget(
        //     name: "MyLibraryTests",
        //     dependencies: ["MyLibrary"]),
    ]
)