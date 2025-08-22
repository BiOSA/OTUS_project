import re


def camel_to_snake(name: str) -> str:
    parts = re.split(r"(_+)", name)
    out = []
    for part in parts:
        if not part or part.startswith("_"):
            out.append(part)
            continue
        part = re.sub(r"([A-Z]+)([A-Z][a-z])", r"\1_\2", part)
        part = re.sub(r"([a-z0-9])([A-Z])", r"\1_\2", part)
        out.append(part.lower())
    return "".join(out)
