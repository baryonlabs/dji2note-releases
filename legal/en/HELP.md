# User guide

## At a glance
| Tab | What it does |
|---|---|
| Notes | DJI connection status, quick recording, list of processed notes (view and copy summary or transcript, open the folder or Drive) |
| Import | Turn recording sources on or off: DJI wireless mic, in-app recording, Zoom local and cloud recordings, Mac Voice Memos |
| General | Notes folder, conversation language, situation for auto-detection, low-power mode, notifications, launch at login |
| AI | The AI and models used for speaker separation and summaries |
| Connections | Google Drive, Notion, work tools (MCP) |
| Check | Installation check, reinstall the engine, run log |
| About | Version and updates, intro page, contact, usage stats, these documents |

## First run
1. When you open the app, the setup wizard walks you through: **Install engine → Summary AI → Connect Google account → Finish**.
2. The transcription model (about 1.6 GB) is downloaded during the first installation.
3. The first time something is processed, macOS may ask for access to "removable volumes", "microphone" or the "Downloads folder". Please allow it.

## Adding recordings
- **DJI wireless mic**: Connect the transmitter (TX) over USB. The app wakes up, copies the new recordings to your Mac first and then processes them. Once copying is done you can unplug the mic. Recordings split into 30-minute files are joined back into one meeting. In the Notes tab you choose whether connecting the mic starts processing right away or asks first.
- **Record in the app**: In the Notes tab, pick the situation (in-person meeting, online meeting, lecture …) and the mic, then press **Start recording**. For online meetings, turn on "Mac audio too" to capture your voice and the other participants' audio separately, so "me" and "others" are split accurately.
- **Zoom**: Meetings recorded with "Record on this computer" are imported automatically once they finish converting. For cloud recordings, just download them from "My recordings" on the Zoom website; the app finds them in your Downloads folder and organizes them by meeting (chat files included).
- **Mac Voice Memos**: When enabled, new recordings in the Voice Memos app are processed. iPhone voice memos are included once they sync via iCloud.
- **Process file…**: Pick audio or video files you already have and process them.

## Viewing notes
- The list shows **topic · time · length · number of speakers · source · situation**.
- Click **Summary / Transcript** to open it in a window. The copy button next to it copies with formatting, so you can paste it straight into documents or messengers.
- Right-click to **change the situation and summarize again**.
- Files are kept in `~/dji2note/notes/<date_time_name>/` as `summary.md` (summary), `transcript.md` (speaker-separated transcript) and `raw_whisper.txt` (raw transcription).

## Situation-specific summaries
| Situation | What the summary covers |
|---|---|
| In-person meeting · online meeting | Decisions, action items (owner, due date) |
| Lecture · class | Key concepts, terms, examples and exercises, Q&A, assignments |
| Interview · job interview | Candidate details, questions and answers, evaluation points, compensation discussion |
| Consultation · client meeting | Needs and problems, proposals, agreements, follow-ups |
| Brainstorming | Idea clusters, promising options, risks, next experiments |
| Talk · seminar | Key messages, notable quotes, Q&A |
| Phone call · personal memo | Key points and commitments / organized thoughts |

The default is **auto-detect** (the AI looks at the beginning, middle and end of the recording and picks one).

## Choosing an AI
| AI | What you need |
|---|---|
| Claude Code | Log in with a Claude subscription account (login button in the AI tab) |
| Codex | Log in to the Codex CLI with a ChatGPT account |
| Anthropic · OpenAI · Gemini API | An API key from that company |
| Baryon AI | The address and key provided by Baryon Labs |
| None | Nothing. Speakers are separated by volume only and no summary is written |

- For the **transcript cleanup model** a fast model is recommended since the text is long; for the **summary model**, the best model available.
- What goes where is described in the "Data and AI notice".

## Connections
- **Google Drive**: Uploads the summary and transcript as Google Docs. Use "Add another account…" to connect several accounts and choose between them.
- **Notion**: Create an internal Notion integration, enter its token, and add a link to the page where notes should be collected. A page is created for each meeting.
- **Work tools (MCP)**: Turn on "Share notes" and a work dashboard or bot can use a token to fetch organized meeting summaries and context. Use "Copy setup instructions for a bot" to pass on the connection details as they are. It is reachable only within the same network or Tailscale, and cannot be accessed without the token.

## Updates
- The app checks for a new version once a day. When one is available, a banner appears in the Notes tab and the menu bar.
- Press **Update** and the app downloads and verifies it (checksum and signature), quits briefly, and reopens as the new version. The engine is automatically brought to the same version.
- You can also check right away with **Check now** in the About tab.

## Summary language
- **Summary language** in the General tab: "Same as conversation" (default), 한국어, English, 日本語, 中文.
- Example: to summarize an English meeting in Korean, choose 한국어. This is set separately from the **conversation language** (the transcription language).

## If something goes wrong
- **Check tab → Check now**: checks the engine, tools, AI login and permissions.
- **Reinstall engine**: when the engine is in a bad state.
- **Open log file**: `~/Library/Logs/dji2note.log`
- "Cannot be verified" warning: System Settings → Privacy & Security → **Open Anyway**.
- If it still doesn't work, let us know with **Contact us** in the About tab.
