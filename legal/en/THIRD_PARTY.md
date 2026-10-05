# Open source notices

> This is a translation for convenience; the Korean version prevails in case of discrepancy.

This app uses the following open source software. Copyright in each component belongs to its authors, and each is used under the license listed below. Full license texts are available in each project's repository and in the installed engine folder (`~/Library/Application Support/DJI2Note/tools/dji2note/lib/python3.12/site-packages/*.dist-info`).

## Transcription and audio
| Component | License |
|---|---|
| Whisper model (OpenAI), whisper-large-v3-turbo MLX conversion (mlx-community) | MIT |
| mlx-whisper, MLX, mlx-metal | MIT |
| imageio-ffmpeg | BSD-2-Clause |
| FFmpeg (executable bundled with imageio-ffmpeg) | LGPL-2.1 or later / GPL (depending on build configuration). Source: ffmpeg.org |
| numba, llvmlite | BSD-2-Clause / BSD-2-Clause AND Apache-2.0 WITH LLVM-exception |
| PyTorch (torch) | BSD-3-Clause and others (includes Apache-2.0, BSL-1.0, MIT components) |
| NumPy, SciPy | BSD-3-Clause (some components 0BSD, MIT, Zlib, CC0-1.0) |
| tiktoken | MIT |
| regex | Apache-2.0 AND CNRI-Python |
| more-itertools, tqdm | MIT / MPL-2.0 AND MIT |
| sympy, mpmath, networkx | BSD-3-Clause |

## AI, connections and server
| Component | License |
|---|---|
| anthropic (Anthropic Python SDK) | MIT |
| mcp, mcp-types (Model Context Protocol SDK) | MIT |
| httpx2, httpcore2 | BSD-3-Clause |
| h11, anyio, sniffio | MIT (sniffio: MIT OR Apache-2.0) |
| starlette, sse-starlette, uvicorn | BSD-3-Clause |
| python-multipart | Apache-2.0 |
| pydantic, pydantic-core, annotated-types, typing-inspection | MIT |
| jsonschema, jsonschema-specifications, referencing, rpds-py, attrs | MIT |
| PyJWT, jiter, docstring-parser | MIT |
| cryptography | Apache-2.0 OR BSD-3-Clause |
| cffi | MIT-0 |
| pycparser | BSD-3-Clause |
| opentelemetry-api | Apache-2.0 |
| requests | Apache-2.0 |
| urllib3, charset-normalizer, truststore | MIT |
| idna | BSD-3-Clause |
| certifi | MPL-2.0 |
| huggingface_hub, hf-xet | Apache-2.0 |
| fsspec, filelock | BSD-3-Clause / MIT |
| Markdown | BSD-3-Clause |
| Jinja2, MarkupSafe, click | BSD-3-Clause |
| PyYAML | MIT |
| packaging | Apache-2.0 OR BSD-2-Clause |
| typing-extensions | PSF-2.0 |
| setuptools | MIT |

## Runtime and tools
| Component | License |
|---|---|
| Python 3.12 | PSF License |
| uv (Astral) | Apache-2.0 OR MIT |
| rclone | MIT |

## App
The Mac app uses only built-in macOS frameworks from Apple, such as SwiftUI, AppKit, AVFoundation and ScreenCaptureKit, and does not bundle any separate open source libraries.
