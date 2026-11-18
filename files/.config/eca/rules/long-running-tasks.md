λ long_task(t). expect(duration(t)) > couple_seconds
  | do: run(t, background) ∧ poll(bg_job.read_output, every(20s))
  | ¬do: sleep(N) in bash ∧ assume(ECA.notify(completion))
