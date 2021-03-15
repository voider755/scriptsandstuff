# scriptsandstuff
Scripts and stuff collection

Bits and bytes written just to learn some bash-fu. Not meant to be extraordinary original and/or useful. Read the code if you wish and do whatever you want with it, everything's MIT Licensed so you know the deal <3

## yttomp3
- A bash script to download audio file(s) from YT and convert them to `mp3`
  - YT downloaded audios with the `.m4a` extension are playable in, say, `audacious`, but editing metadata seems not possible with said application. So we're downloading and converting the audio files to `mp3` so we can edit its metadata.

- Dependencies: `youtube-dl`, `ffmpeg`

- The script will:
  1. Ask you for a YT link. Can be a single video link or a playlist
  2. Download, using `youtube-download`, the `*.m4a` file for that video(s)
  3. Once done, convert the downloaded file(s) with `ffmpeg` to `*.mp3` format
  4. Delete all \*.m4a files

**WARNING**: if succeeded, the script will convert ALL existing `*.m4a` files to `*.mp3`, and will erase ALL `*.m4a` files inside the working directory afterwards

**NOTE**: `youtube-dl` has a native capacity for downloading and converting YT files to mp3, so you can just use:

`youtube-dl --extract-audio --audio-format mp3 <yt_link>`

Only differences with `yttomp3` are that the former will just prompt you for a YT link (no need to write any actual command, just calling the script), and it has a more verbose output (i. e., it will output the ffmpeg bit, indicating the conversion progress) Use whatever you prefer

- How to:
  1. Download the script. You can use `git clone https://github.com/voider755/scriptsandstuff.git`, or download the `raw` file, or just copy and paste the text in a blank text file
  2. Give the script execute permissions, for example: `chmod u+x yttomp3.sh`
  3. Move the script to your working directory or, better, add a shell alias, as in your `~/.bashrc` or `~/.zshrc`:
    - `alias yttomp3=/your/path/to/yttomp3.sh`
  4. Navigate to the directory where you want to download the audio file(s)
  5. Execute the script. Call its `alias` if you have it aliased, or, if it's inside your working directory, use `./yttomp3.sh`, otherwise use full path to the script
  6. Paste the YT link when prompted, and wait for the script to finish
  7. Enjoy!
