use inc::Module::Install;
RTx('RT-Extension-ResetPassword');
author ('Jesse Vincent <jesse@bestpractical.com>');
readme_from('lib/RT/Extension/ResetPassword.pm');
all_from('lib/RT/Extension/ResetPassword.pm');
license('perl');

sign;
&WriteAll;
