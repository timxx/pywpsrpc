# AGENTS.md — pywpsrpc

## Project Overview

Python bindings for WPS Office RPC API (Linux only). Uses SIP to generate C++/Python bindings from `.sip` definition files, wrapping the WPS Office C++ SDK.

## Build & Test Commands

```bash
# Build (from project root)
sip-build
sip-build --verbose   # with verbose output

# Package for distribution
sip-wheel

# Run tests (requires WPS Office installed and running)
python -m pytest tests/
python -m unittest tests/test_rpcwpsapi.py
```

## Architecture

### Modules

| Module | Purpose | SIP source |
|--------|---------|------------|
| `common` | Shared interfaces (IUnknown, GUID, CommandBars, etc.) | `sip/common/` |
| `rpcwpsapi` | WPS Writer (word processor) API | `sip/rpcwpsapi/` |
| `rpcwppapi` | WPS Presentation (slides) API | `sip/rpcwppapi/` |
| `rpcetapi` | WPS Spreadsheet (excel) API | `sip/rpcetapi/` |

### Key Files

- **`project.py`** — Custom `sipbuild.Project` subclass; defines bindings, include paths, PCH, library detection. This is the build system core.
- **`pyproject.toml`** — SIP build metadata and project config.
- **`py/__init__.py`** — Package init (copied into built package as `pywpsrpc/__init__.py`).
- **`py/utils.py`** — `RpcProxy`, `RpcIter`, `RpcException`, `RpcMethod` — the Python-side utility layer.
- **`include/pyevents.h`** — C++ event dispatch infrastructure for Python callbacks.
- **`sip/`** — SIP binding definition files (`.sip`), one per COM interface/class.
- **`build/`** — Generated C++ source and compiled output (do not edit manually).
- **`wpsrpc-sdk/`** — Git submodule containing WPS C++ SDK headers and libraries.

### Build Pipeline

1. `project.py` configures bindings (include dirs, libraries, PCH headers, Qt modules)
2. SIP reads `.sip` files from `sip/<module>/` and generates C++ source into `build/<module>/`
3. qmake + g++ compile the generated C++ into Python extension modules
4. The `py/` directory is merged into the final `pywpsrpc` package

## Conventions

### HRESULT Return Values
All WPS API calls return HRESULT as the first tuple element. `0` (`common.S_OK`) = success. Use `common.SUCCEEDED()` / `common.FAILED()` to check.

### 1-Based Collection Indexing
WPS collections (Documents, Paragraphs, etc.) use 1-based indexing, not 0-based. `RpcIter` handles this internally.

### SIP File Conventions
- Each COM interface maps to one `.sip` file named after the interface
- `enums.sip` / `mso_enum.sip` define enumerations
- `_Application.sip` and `_Application_extend.sip` show the pattern for extending generated classes
- `export.sip` in `sip/common/` is included by other modules

### Event Registration
Events use `rpc.registerEvent(app, eventIID, "EventName", pythonCallback)`. The C++ side is in `include/pyevents.h`.

## Pitfalls

- **WPS Office must be installed** to run tests or use the library. Tests will fail without it.
- **`wpsrpc-sdk` is a git submodule** — run `git submodule update --init` after cloning.
- **`build/` directory is generated** — never edit files there directly; modify `.sip` files or `project.py` instead.
- **qmake required** — the build needs `qmake-qt5` or `qmake` on PATH.
- **Desktop environment required** — WPS Office needs a display to run (X11/Wayland).
- **WPS integration mode has bugs** — use multi-component (All-in-One) mode when not embedding WPS.

## References

- [README (中文)](README.md) — full documentation and quick start
- [README (English)](README_en.md) — English version
- [Examples](examples/) — document conversion, embedding, event handling
- [Wiki](https://github.com/timxx/pywpsrpc/wiki) — extended documentation
- [WPS API docs](https://open.wps.cn/docs/client/wpsLoad)
- [VBA reference](https://docs.microsoft.com/en-us/office/vba/api/overview/)
