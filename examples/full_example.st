(CronTab named: 'My crontab')
    comment: 'Here is an example of what you can do with the crontab DSL in Pharo.';
    newTask: [ :task |
        task
            comment: 'Backup everything.';
            command: '/usr/bin/backup';
            everyHour;
            log ];
    newTask: [ :task |
        task
            comment: 'Run a speed test.';
            command: '/usr/bin/speedtest --simple';
            everyDayAt: '12:00' asTime ];
    newTask: [ :task |
        task
            comment: 'Check if connected to the internet.';
            command: '/usr/bin/ping -c 5 www.google.com';
            eachMonth: { 'January' . 'February' } the: (15 to: 17) at: '12:00' asTime;
            logInFile: '/var/log/ping.log' ];
    newTask: [ :task |
        task
            comment: 'Compute things.';
            command: '/usr/bin/compute_things';
            eachMonthThe: (15 to: 17) at: '12:00' asTime;
            mute ];
    newTask: [ :task |
        task
            comment: 'Update things.';
            command: '/usr/bin/update_things';
            eachDayOfWeek: #('sunday' 'monday' 'wednesday') at: #('11:00' '15:30' '23:05') asTimes;
            tee: '/var/log/update.log' thenSendMailTo: 'admin@hello.org' withSubject: '[Cron]Update is done' ];
    generate
