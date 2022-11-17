def _python_standalone_toolchain_impl(rctx):
    rctx.download_and_extract(
        url = rctx.attr.urls,
        sha256 = rctx.attr.sha256sum,
        stripPrefix = "python",
    )

    rctx.template("BUILD", Label("//toolchain:BUILD.tpl.bzl"))
    return None

python_standalone_toolchain = repository_rule(
    implementation = _python_standalone_toolchain_impl,
    attrs = {
        "urls": attr.string_list(mandatory = True),
        "sha256sum": attr.string(mandatory = True),
    },
)
