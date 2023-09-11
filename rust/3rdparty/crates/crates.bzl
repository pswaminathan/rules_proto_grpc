###############################################################################
# @generated
# This file is auto-generated by the cargo-bazel tool.
#
# DO NOT MODIFY: Local changes may be replaced in future executions.
###############################################################################
"""Rules for defining repositories for remote `crates_vendor` repositories"""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

# buildifier: disable=bzl-visibility
load("@rules_proto_grpc//rust/3rdparty/crates:defs.bzl", _crate_repositories = "crate_repositories")

# buildifier: disable=bzl-visibility
load("@rules_rust//crate_universe/private:crates_vendor.bzl", "crates_vendor_remote_repository")

def crate_repositories():
    maybe(
        crates_vendor_remote_repository,
        name = "rules_proto_grpc_rust",
        build_file = Label("@rules_proto_grpc//rust/3rdparty/crates:BUILD.bazel"),
        defs_module = Label("@rules_proto_grpc//rust/3rdparty/crates:defs.bzl"),
    )

    _crate_repositories()
