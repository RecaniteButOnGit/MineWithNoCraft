from __future__ import annotations

import shutil
from pathlib import Path


TARGET_DATAPACKS_DIR = Path(
    r"C:\Users\Recan\AppData\Roaming\ModrinthApp\profiles\Vanilla\saves\Mine with no Craft\datapacks"
)
DEST_PACK_FOLDER_NAME = "MineWithNoCraft"
PACK_CONTENTS = ("pack.mcmeta", "data", "pack.png")


def clear_folders(directory: Path) -> None:
    for item in directory.iterdir():
        if item.is_dir():
            shutil.rmtree(item)
            print(f"Removed folder: {item}")


def copy_datapack(source_root: Path, destination_root: Path) -> Path:
    destination_pack = destination_root / DEST_PACK_FOLDER_NAME
    destination_pack.mkdir(parents=True, exist_ok=True)

    for name in PACK_CONTENTS:
        source = source_root / name
        if not source.exists():
            continue

        destination = destination_pack / name
        if source.is_dir():
            shutil.copytree(source, destination, dirs_exist_ok=True)
        else:
            shutil.copy2(source, destination)
        print(f"Copied: {source} -> {destination}")

    return destination_pack


def main() -> int:
    source_root = Path(__file__).resolve().parent
    target = TARGET_DATAPACKS_DIR

    target.mkdir(parents=True, exist_ok=True)
    clear_folders(target)
    destination_pack = copy_datapack(source_root, target)

    print(f"Deployment complete: {destination_pack}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
