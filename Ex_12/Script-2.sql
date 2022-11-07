use kek;
#Задание 7.1
select substring(char_fld,17,10) from hom;  
#Задание 7.2 стр 165
select strcmp('12345','12345') 12345_12345,
STRCMP('abed','xyz') abcd_xyz,
STRCMP('abed','QRSTUV' ) abcd_QRSTUV,
STRCMP('qrstuv','QRSTUV') qrstuv_QRSTUV,
STRCMP('12345' ,'xyz') 12345_xyz,
STRCMP('xyz' ,'qrstuv' ) xyz_qrstuv;
#Задание 7.3