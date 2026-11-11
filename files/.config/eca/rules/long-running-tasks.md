# When you expect a task to run longer than a couple of seconds

## Do

- Run as a background task
- Poll with `bg_job read_output` every 20 seconds

## Avoid

- `sleep N` in bash commands
- Assuming that ECA will notify you on completion
