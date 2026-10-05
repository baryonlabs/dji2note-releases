# 오픈소스 고지

이 앱은 다음 오픈소스 소프트웨어를 사용합니다. 각 구성요소의 저작권은 해당 저작자에게 있으며, 아래 라이선스에 따라 사용됩니다. 라이선스 전문은 각 프로젝트 저장소와 설치된 엔진 폴더(`~/Library/Application Support/DJI2Note/tools/dji2note/lib/python3.12/site-packages/*.dist-info`)에서 확인할 수 있습니다.

## 받아쓰기·음성
| 구성요소 | 라이선스 |
|---|---|
| Whisper 모델 (OpenAI), whisper-large-v3-turbo MLX 변환 (mlx-community) | MIT |
| mlx-whisper, MLX, mlx-metal | MIT |
| imageio-ffmpeg | BSD-2-Clause |
| FFmpeg (imageio-ffmpeg에 포함된 실행 파일) | LGPL-2.1 이상 / GPL (빌드 구성에 따름) — 소스: ffmpeg.org |
| numba, llvmlite | BSD-2-Clause / BSD-2-Clause AND Apache-2.0 WITH LLVM-exception |
| PyTorch (torch) | BSD-3-Clause 등 (Apache-2.0, BSL-1.0, MIT 구성요소 포함) |
| NumPy, SciPy | BSD-3-Clause (일부 구성요소 0BSD, MIT, Zlib, CC0-1.0) |
| tiktoken | MIT |
| regex | Apache-2.0 AND CNRI-Python |
| more-itertools, tqdm | MIT / MPL-2.0 AND MIT |
| sympy, mpmath, networkx | BSD-3-Clause |

## AI·연동·서버
| 구성요소 | 라이선스 |
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

## 런타임·도구
| 구성요소 | 라이선스 |
|---|---|
| Python 3.12 | PSF License |
| uv (Astral) | Apache-2.0 OR MIT |
| rclone | MIT |

## 앱
Mac 앱은 Apple의 SwiftUI·AppKit·AVFoundation·ScreenCaptureKit 등 macOS 기본 프레임워크만 사용하며, 앱 번들에 별도의 오픈소스 라이브러리를 포함하지 않습니다.
