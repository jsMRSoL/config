Vim�UnDo� K�#��v����HXV�������o|&)�>@���|                                     \�M�    _�                        )    ����                                                                                                                                                                                                                                                                                                                                                             \�/     �         
      @choice=$( awk '{print $1}' $file | dmenu -p "Choose bookmark: ")5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             \�/    �         
      Fchoice=$( awk '{print $1}' $file | dmenu -l 20 -p "Choose bookmark: ")5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             \��[     �         
      $search='/^'"$choice"'/{print $2,$3}'5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             \��a     �         
      -search='/^'"$choice"'/{$1 = ""; print $2,$3}'5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             \��c     �         
      -search='/^'"$choice"'/{$1 = ""; print $2,$3}'5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             \��d     �         
      ,search='/^'"$choice"'/{$1 = ""; print $,$3}'5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             \��d     �         
      +search='/^'"$choice"'/{$1 = ""; print $$3}'5�_�      	                 '    ����                                                                                                                                                                                                                                                                                                                                                             \��f     �         
      *search='/^'"$choice"'/{$1 = ""; print $3}'5�_�                 	           ����                                                                                                                                                                                                                                                                                                                                                             \��k    �                	echo $cmd5�_�   	      
                  ����                                                                                                                                                                                                                                                                                                                                                v       \�L�     �                �         
    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       \�M�     �               [ ! -z "$choice" ] && exit5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       \�M�    �               [  -z "$choice" ] && exit5�_�   	             
           ����                                                                                                                                                                                                                                                                                                                                                             \�L�     �         
       �               if5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             \�L�     �               "if ${2:[[ ${1:condition} ]]}; then       ${0:#statements}   fi�               if [[ condition ]]; then�                   #statements5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       \�L�     �               if [[  ]]; then5��