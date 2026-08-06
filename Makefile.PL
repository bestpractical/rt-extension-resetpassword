use inc::Module::Install;
RTx('RT-Extension-ResetPassword');
name 'RT-Extension-ResetPassword';

requires_rt('6.0.0');

sign;
&WriteAll;
