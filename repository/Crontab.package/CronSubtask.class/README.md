I am a subtask. I am not a concept defined by cron implementation.
I am here to help when a command has to be run at different exact times.

For example if you want to run a task the monday at 3:45pm and the friday at 5:15am you will get in your crontab the following lines:
45 3 * * 1 /usr/bin/something
15 5 * * 5 /usr/bin/something

Each line is represented by a CronSubtask in this model.

CronSubtask are hold by a CronTask.