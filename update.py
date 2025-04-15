import click
import shutil
import subprocess
import json
import re
from jinja2 import Template


@click.command()
def main():
    zig_path = shutil.which("zig")
    if zig_path is None:
        print("Program 'zig' not found!")
        return -1

    p = subprocess.run(["zig", "targets"], capture_output=True)
    targets_text = p.stdout.decode()

    matched = re.search(
        r"\.libc\s*\=\s*\.(\{[^\}]*\})", targets_text, re.MULTILINE
    )
    targets = re.findall(r"\"([^\"]*)\"", matched.group(1), re.MULTILINE)
    with open("zig-toolchain-template.cmake.jinja") as f:
        tpl = Template(f.read())
    for target in set(targets):
        print("Updating %s ..." % target)
        parties = target.split("-")
        content = tpl.render(
            zig_libc=parties[2], zig_os=parties[1], zig_arch=parties[0]
        )

        with open(
            "zig-toolchain-%s.cmake" % target, "w", encoding="utf-8"
        ) as f:
            f.write(content)


if __name__ == "__main__":
    main()
