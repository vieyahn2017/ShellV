#!/bin/sh  
  
#ͳ�Ƴ�/tmpĿ¼�����нű��ļ�(.sh)������
find /tmp -name ".sh" -print0 | xargs -0 wc -l


# ��������ͼƬ�ļ��� /data/images Ŀ¼�£�
ls *.jpg | xargs -n1 -I cp {} /data/images


# ͳ��һ��Դ����Ŀ¼������py�ļ���������
find . -type f -name "*.py" -print0 | xargs -0 wc -l


#����ϵͳ�в������κ��û����ļ���Ŀ¼
df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -nouser -ls
