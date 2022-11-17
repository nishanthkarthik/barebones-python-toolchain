load("@rules_python//python:defs.bzl", "py_binary", "py_runtime", "py_runtime_pair")

py_runtime(
    name = "python3_runtime",
    files = ["@py_310_linux//:files"],
    interpreter = "@py_310_linux//:interpreter",
    python_version = "PY3",
    visibility = ["//visibility:public"],
)

py_runtime_pair(
    name = "py_runtime",
    py2_runtime = None,
    py3_runtime = ":python3_runtime",
)

toolchain(
    name = "py_toolchain",
    toolchain = ":py_runtime",
    toolchain_type = "@bazel_tools//tools/python:toolchain_type",
)

py_binary(
    name = "hello",
    srcs = ["hello.py"],
)
