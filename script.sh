#!/bin/sh
cp /etc_ro/default/default_parameter_user /etc_ro/default/amw_default_parameter_user_backup
cp /etc_ro/default/default_parameter_sys /etc_ro/default/amw_default_parameter_sys_backup
cp /yaffs/apply_config.conf /yaffs/amw_apply_config.conf_backup

sed -i 's/tz_web_page_hide=c37853fa0aea/tz_web_page_hide=2000000/g' /etc_ro/default/default_parameter_user
sed -i 's/tz_web_user_hide=61fdf9ea9eef/tz_web_user_hide=10000000/g' /etc_ro/default/default_parameter_user
sed -i 's/tz_language_select_hide=1/tz_language_select_hide=0/g' /etc_ro/default/default_parameter_user
sed -i 's/tz_web_special_func=80/tz_web_special_func=0/g' /etc_ro/default/default_parameter_user

sed -i 's/need_support_pb=no/need_support_pb=yes/g' /etc_ro/default/default_parameter_sys
sed -i 's/need_support_sms=no/need_support_sms=yes/g' /etc_ro/default/default_parameter_sys
sed -i 's/tz_lock_band_state=yes/tz_lock_band_state=no/g' /etc_ro/default/default_parameter_sys
sed -i 's/tz_lock_plmn_state=yes/tz_lock_plmn_state=no/g' /etc_ro/default/default_parameter_sys
sed -i 's/tz_lock_plmn_list=41312/tz_lock_plmn_list=/g' /etc_ro/default/default_parameter_sys
sed -i 's/tr069_app_enable=1/tr069_app_enable=0/g' /etc_ro/default/default_parameter_sys
sed -i 's/allow_login_from_wan=yes/allow_login_from_wan=no/g' /etc_ro/default/default_parameter_sys
sed -i 's/tz_voice_support=0/tz_voice_support=1/g' /etc_ro/default/default_parameter_sys

sed -i 's/export tz_lock_plmn_state_s="yes"/export tz_lock_plmn_state_s="no"/g' /yaffs/apply_config.conf
sed -i 's/export tz_lock_plmn_list_s="41312"/export tz_lock_plmn_list_s=""/g' /yaffs/apply_config.conf
sed -i 's/export tz_language_select_hide_u="1"/export tz_language_select_hide_u="0"/g' /yaffs/apply_config.conf
sed -i 's/export tz_web_page_hide_u="c37853fa0aea"/export tz_web_page_hide_u="2000000"/g' /yaffs/apply_config.conf
sed -i 's/export tz_web_user_hide_u="61fdf9ea9eef"/export tz_web_user_hide_u="10000000"/g' /yaffs/apply_config.conf
