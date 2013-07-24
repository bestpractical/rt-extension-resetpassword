use inc::Module::Install;
RTx('RT-Extension-ResetPassword');
readme_from('lib/RT/Extension/ResetPassword.pm');
all_from('lib/RT/Extension/ResetPassword.pm');

manifest_skip;
sign;
&WriteAll;
