package(default_visibility = ["//visibility:public"])

filegroup(
    name = "files",
    srcs = glob(
        [
            "include/**",
            "bin/**",
            "lib/**",
        ],
        exclude = [
            "**/* *",  # Bazel does not support spaces in file names.
            # Unused shared libraries. `python` executable and the `:libpython` target
            # depend on `libpython{python_version}.so.1.0`.
            "lib/libpython*.so",
            # static libraries
            "lib/**/*.a",
            # tests for the standard libraries.
            "lib/python*/**/test/**",
            "lib/python*/**/tests/**",
        ],
    ),
)

filegroup(
    name = "interpreter",
    srcs = ["bin/python3"],
)
