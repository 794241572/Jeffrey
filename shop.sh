#!/bin/bash

####################################################
# Name    : vip.sh                                 #
# Date    : 2020.12.03                             #
# Auther  : JeffreyZheng                           #
####################################################

shop () {
    #清屏
clear

#花费数
money=0


#清除上次的购物记录
if [ -e 购物记录.txt ]
then
    rm -rf 购物记录.txt
fi
echo "***************** 购物记录 *****************">>$1/购物记录.txt

for((;;))
do
    clear
    echo "***************** 欢迎光临 *****************"
    echo -e "\t\t买买买商店"
    echo -e "\t\t1.日用品类"
    echo -e "\t\t2.水果类"
    echo -e "\t\t3.食品类"
    echo -e "\t\t4.退出用户"
    echo "***************** 欢迎光临 *****************"
    echo
    read -p "输入序号进行相关操作:" n

    #日用品类商品界面
    if [ $n -eq 1 ]
    then
        for((;;))
        do
            clear
            echo "***************** 日用品类 *****************"
            echo -e "\t\t1.毛巾￥8"
            echo -e "\t\t2.牙膏￥12"
            echo -e "\t\t3.返回"
            echo "***************** 日用品类 *****************"
            echo
            read -p "输入序号进行相关操作:" n
            
            #买毛巾
            if [ $n -eq 1 ]
            then
                read -p "请输入购买数量:" n
                if [ $n -gt 0 ]
                then  
                    echo -e "毛巾 $n 条\t购买成功"
                    echo -e "您购买了 $n 条毛巾\t单价：8元\t总计：$(($n*8))元">>$1/购物记录.txt
                    echo -e "`date`\t 商店卖出了 $n 条毛巾\t单价：8元\t总计：$(($n*8))元">>$1/商店卖出记录.txt
                    money=`expr $money + $n \* 8`
                    read -p "#按回车键返回#"
                else 
                    echo -e "输入错误，购买失败"
                    read -p "#按回车键返回#"
                fi

            #买牙膏
            elif [ $n -eq 2 ]
            then
                read -p "请输入购买数量:" n

                if [ $n -gt 0 ]
                then  
                    echo -e "牙膏 $n 条\t购买成功"
                    echo -e "您购买了 $n 条牙膏\t单价：12元\t总计：$(($n*12))元">>$1/购物记录.txt
                    echo -e "`date`\t 商店卖出了 $n 条牙膏\t单价：12元\t总计：$(($n*12))元">>$1/商店卖出记录.txt
                    money=`expr $money + $n \* 12`
                    read -p "#按回车键返回#"
                else
                    echo -e "输入错误，购买失败"
                    read -p "#按回车键返回#"
                fi 

            #返回主界面
            elif [ $n -eq 3 ]
            then 
                break

            #非法输入
            else
                echo -e "请正确输入序号"
                read -p "#按回车键返回#"
            fi
        done


    #水果类商品界面
    elif [ $n -eq 2 ]
    then
        for((;;))
        do
            clear
            echo "*****************  水果类  *****************"
            echo -e "\t\t1.苹果￥4"
            echo -e "\t\t2.香蕉￥2"
            echo -e "\t\t3.返回"
            echo "*****************  水果类  *****************"
            echo
            read -p "输入序号进行相关操作:" n
            
            #买苹果
            if [ $n -eq 1 ]
            then
                read -p "请输入购买数量:" n
                if [ $n -gt 0 ]
                then  
                    echo -e "苹果 $n 斤\t购买成功"
                    echo -e "您购买了 $n 斤苹果\t单价：4元\t总计：$(($n*4))元">>$1/购物记录.txt
                    echo -e "`date`\t 商店卖出了 $n 斤苹果\t单价：4元\t总计：$(($n*4))元">>$1/商店卖出记录.txt
                    money=`expr $money + $n \* 4`
                    read -p "#按回车键返回#"
                else
                    echo -e "输入错误，购买失败"
                    read -p "#按回车键返回#"
                fi

            #买香蕉
            elif [ $n -eq 2 ]
            then
                read -p "请输入购买数量:" n

                if [ $n -gt 0 ]
                then  
                    echo -e "香蕉 $n 斤\t购买成功"
                    echo -e "您购买了 $n 斤香蕉\t单价：2元\t总计：$(($n*2))元">>$1/购物记录.txt
                    echo -e "`date`\t 商店卖出了 $n 斤香蕉\t单价：2元\t总计：$(($n*2))元">>$1/商店卖出记录.txt
                    money=`expr $money + $n \* 2`
                    read -p "#按回车键返回#"
                else
                    echo -e "输入错误，购买失败"
                    read -p "#按回车键返回#"
                fi 

            #返回主界面
            elif [ $n -eq 3 ]
            then 
                break

            #非法输入
            else
                echo -e "请正确输入序号"
                read -p "#按回车键返回#"
            fi
        done


    #零食类商品界面
    elif [ $n -eq 3 ]
    then
        for((;;))
        do
            clear
            echo "*****************  零食类  *****************"
            echo -e "\t\t1.面包￥2"
            echo -e "\t\t2.火腿￥10"
            echo -e "\t\t3.返回"
            echo "*****************  零食类  *****************"
            echo
            read -p "输入序号进行相关操作:" n
            
            #买面包
            if [ $n -eq 1 ]
            then
                read -p "请输入购买数量:" n
                if [ $n -gt 0 ]
                then  
                    echo -e "面包 $n 包\t购买成功"
                    echo -e "您购买了 $n 包面包\t单价：2元\t总计：$(($n*2))元">>$1/购物记录.txt
                    echo -e "`date`\t 商店卖出了 $n 包面包\t单价：2元\t总计：$(($n*2))元">>$1/商店卖出记录.txt
                    money=`expr $money + $n \* 2`
                    read -p "#按回车键返回#"
                else
                    echo -e "输入错误，购买失败"
                    read -p "#按回车键返回#"
                fi

            #买火腿
            elif [ $n -eq 2 ]
            then
                read -p "请输入购买数量:" n

                if [ $n -gt 0 ]
                then  
                    echo -e "火腿 $n 包\t购买成功"
                    echo -e "您购买了 $n 包火腿\t单价：10元\t总计：$(($n*10))元\t">>$1/购物记录.txt
                    echo -e "`date`\t 商店卖出了 $n 包火腿\t单价：10元\t总计：$(($n*10))元">>$1/商店卖出记录.txt
                    money=`expr $money + $n \* 1`
                    read -p "#按回车键返回#"
                else
                    echo -e "输入错误，购买失败"
                    read -p "#按回车键返回#"
                fi 

            #返回主界面
            elif [ $n -eq 3 ]
            then 
                break

            #非法输入
            else
                echo -e "请正确输入序号"
                read -p "#按回车键返回#"
            fi
        done

    
    #退出购物系统
    elif [ $n -eq 4 ]
    then
        clear

        #判断用户是否购买商品
        if [ ! $money -eq 0 ]
        then
            cat 购物记录.txt
            echo "***************** 购物记录 *****************"
            echo
            echo
            echo >>$1/购物记录.txt
            echo >>$1/购物记录.txt
            echo -e "本次您一共消费 $money 元">>$1/购物记录.txt
            echo 
            echo
            echo "***************** 谢谢惠顾 *****************"
            #用户满足促销活动条件"满88减10"
            if [ $money -ge 88 ]
            then
                echo -e "本次您一共消费 $money 元"
                echo -e "满足新店大促销条件，实际付款 $(($money-10)) 元"
                echo -e "满足新店大促销条件，实际付款 $(($money-10)) 元">>$1/购物记录.txt
                echo "***************** 购物记录 *****************">>$1/购物记录.txt
                echo -e "`date`\t本次商店收到付款 $(($money-10)) 元">>$1/商店盈利记录.txt
                echo -e "本店活动多多，期待您的下次光临"
            else
                echo -e "本次您一共消费 $money 元"
                echo -e "不满足新店大促销条件，实际付款 $money 元"
                echo -e "不满足新店大促销条件，实际付款 $money 元">>$1/购物记录.txt
                echo "***************** 购物记录 *****************">>$1/购物记录.txt
                echo -e "`date`\t本次商店收到付款 $money 元">>$1/商店盈利记录.txt 
            fi

        else
            echo "***************** 谢谢惠顾 *****************"
            echo -e "您没有进行任何的消费"
            echo -e "本店活动多多，期待您的下次光临"
        fi
        echo "***************** 谢谢惠顾 *****************"
        echo
        read -p "#按回车键退出用户#"
        break


    #非法输入
    else
        echo -e "请正确输入序号"
        read -p "#按回车键返回#"

    fi

done
}


#清屏
clear


#获取脚本的工作目录
pwd=`pwd`

#检查用户信息存放目录
test -e ${pwd}/user/
if [ $? -ne 0 ]
then
    mkdir user/
fi

#会员操作界面
for ((;;))
do
    clear
    echo "***************** 会员登录 *****************"
    echo -e "\t\t买买买商店"
    echo -e "\t\t1.会员登录"
    echo -e "\t\t2.会员注册"
    echo -e "\t\t3.修改密码"
    echo -e "\t\t4.密码找回"
    echo -e "\t\t5.退出"
    echo "***************** 会员登录 *****************"
    echo
    read -p "输入序号进行相关操作:" n

    #会员登录
    if [ $n -eq 1 ]
    then
        read -p "请输入您的手机号：" username

        #登录验证
        test -e ${pwd}/user/${username}.txt
        if [ $? -eq 0 ]
        then
            read -p  "请输入您的会员密码：" -s  password
            key=`awk -F "：" 'NR==5{print $2}' ${pwd}/user/${username}.txt `
            if [ $password == $key ]
            then
		        clear
                echo -e "\t\t正在登陆，请稍候。。。"
                sleep 2s
		        shop  ${pwd}
            else
                clear
                echo -e "输入密码错误！"
                read -p "#按回车键返回#"
            fi
        else
            echo -e "输入手机号错误！"
            read -p "#按回车键返回#"
        fi

    #会员注册
    elif [ $n -eq 2 ]
    then
        read -p "请输入您的手机号：" username
        if [ $username -gt 0 ] && [ ${#username} -eq 11 ]
        then

            #验证手机号是否被注册
            test -e ${pwd}/user/${username}.txt
            if [ $? -ne 0 ]
            then
                read -p "请输入您的身份证号：" ID
                if [ $ID -gt 0 ] && [ ${#ID} -eq 18 ]
                then
                    clear
                    echo "***************** 注册信息 *****************"
                    echo
                    echo -e "您注册的手机号为：$username"
                    echo -e "您的身份证号为：$ID"
                    echo -e "默认密码为：dev@easyops"
                    echo -e 
                    echo "***************** 注册信息 *****************"
                    echo
                    read -p "#按回车键返回#"

                    #保存用户信息
                    echo "***************** 用户信息 *****************">>${pwd}/user/${username}.txt
                    echo                                              >>${pwd}/user/${username}.txt
                    echo -e "手机号为：$username"                       >>${pwd}/user/${username}.txt
                    echo -e "身份证号为：$ID"                           >>${pwd}/user/${username}.txt
                    echo -e "密码为：dev@easyops"                      >>${pwd}/user/${username}.txt
                    echo                                              >>${pwd}/user/${username}.txt
                    echo "***************** 用户信息 *****************" >>${pwd}/user/${username}.txt
                else
                    echo -e "身份证号格式错误！"
                    read -p "#按回车键返回#"
                fi
            
            else
                echo -e "该手机号已被注册！"
                read -p "#按回车键返回#"
            fi

        else
            echo -e "输入手机号格式错误！"
            read -p "#按回车键返回#"
        fi

    #修改密码
    elif [ $n -eq 3 ]
    then
        read -p "请输入您的手机号：" username
        test -e ${pwd}/user/${username}.txt
        if [ $? -eq 0 ]
        then

            #验证用户身份，通过调出用户信息
            read -p "请输入您的身份证号：" ID
            if [ $ID -gt 0 ] && [ ${#ID} -eq 18 ]
            then
                grep $ID <${pwd}/user/${username}.txt >>/dev/null
                if [ $? -eq 0 ]
                then
                    clear
                    for ((;;))
                    do
                        read -s -p "请输入新密码(6-16位)：" a
                        echo
                        if [ ${#a} -ge 6 ] && [ ${#a} -le 16 ]
                        then
                            clear
                            read -s -p "再次输入密码：" b
                            echo
                            if [ $a = $b ]
                            then
                                clear
                                echo -e "修改密码成功"
                                key=`awk -F "：" 'NR==5{print $2}' ${pwd}/user/${username}.txt `
                                #保存用户信息
                                echo "***************** 用户信息 *****************">${pwd}/user/${username}.txt
                                echo                                              >>${pwd}/user/${username}.txt
                                echo -e "手机号为：$username"                       >>${pwd}/user/${username}.txt
                                echo -e "身份证号为：$ID"                           >>${pwd}/user/${username}.txt
                                echo -e "密码为：$a"                               >>${pwd}/user/${username}.txt
                                echo                                              >>${pwd}/user/${username}.txt
                                echo "***************** 用户信息 *****************" >>${pwd}/user/${username}.txt
                                read -p "#按回车返回#"
                                break
                            else
                                clear
                                echo -e "两次输入密码不一致，请重试"
                                read -p "#按回车键返回，重新设置密码#"
                            fi
                        else
                            clear
                            echo -e "新密码长度不符合要求，请重试"
                            read -p "#按回车键返回，重新设置密码#"
                        fi                       
                        
                    done

                else
                    echo -e "身份证输入错误"
                    read -p "#按回车键返回#"
                fi
            else
                echo -e "身份证号格式错误！"
                read -p "#按回车键返回#"
            fi

        else
            echo -e "手机号未注册"
            read -p "#按回车键返回#"
        fi  

    #密码找回
    elif [ $n -eq 4 ]
    then
        read -p "请输入您的手机号：" username
        test -e ${pwd}/user/${username}.txt
        if [ $? -eq 0 ]
        then

            #验证用户身份，通过调出用户信息
            read -p "请输入您的身份证号：" ID
            if [ $ID -gt 0 ] && [ ${#ID} -eq 18 ]
            then
                grep $ID <${pwd}/user/${username}.txt >>/dev/null
                if [ $? -eq 0 ]
                then
		            clear
                    cat ${pwd}/user/${username}.txt
                    echo 
                    read -p "#按回车键返回#"
                else
                    echo -e "身份证输入错误"
                    read -p "#按回车键返回#"
                fi
            else
                echo -e "身份证号格式错误！"
                read -p "#按回车键返回#"
            fi

        else
            echo -e "手机号无效"
            read -p "#按回车键返回#"
        fi  

    
    #退出系统
    elif [ $n -eq 5 ]
    then
        break


    #非法输入
    else
        echo -e "请正确输入序号"
        read -p "#按回车键返回#"

    fi

done

