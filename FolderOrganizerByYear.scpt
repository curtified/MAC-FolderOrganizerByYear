FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # Prompt the user to select a folder     � 	 	 F   P r o m p t   t h e   u s e r   t o   s e l e c t   a   f o l d e r   
  
 l    	 ����  r     	    I    ���� 
�� .sysostflalis    ��� null��    �� ��
�� 
prmp  m       �   8 S e l e c t   a   f o l d e r   t o   o r g a n i z e :��    o      ���� 0 	thefolder 	theFolder��  ��        l     ��������  ��  ��        l     ��  ��    , & Ask the user for a folder naming base     �   L   A s k   t h e   u s e r   f o r   a   f o l d e r   n a m i n g   b a s e      l  
  ����  r   
     n   
      1    ��
�� 
ttxt   l  
  !���� ! I  
 �� " #
�� .sysodlogaskr        TEXT " m   
  $ $ � % % @ E n t e r   t h e   b a s e   n a m e   f o r   f o l d e r s : # �� &��
�� 
dtxt & m     ' ' � ( (  ��  ��  ��    o      ����  0 foldernamebase folderNameBase��  ��     ) * ) l     ��������  ��  ��   *  + , + l  I -���� - O   I . / . k   H 0 0  1 2 1 l   �� 3 4��   3 1 + Get a list of items in the selected folder    4 � 5 5 V   G e t   a   l i s t   o f   i t e m s   i n   t h e   s e l e c t e d   f o l d e r 2  6 7 6 r     8 9 8 n     : ; : 2    ��
�� 
cobj ; o    ���� 0 	thefolder 	theFolder 9 o      ���� 0 
folderlist 
folderList 7  <�� < X    H =�� > = k   0C ? ?  @ A @ l  0 0�� B C��   B 7 1 Check if it's a folder and get its creation date    C � D D b   C h e c k   i f   i t ' s   a   f o l d e r   a n d   g e t   i t s   c r e a t i o n   d a t e A  E�� E Z   0C F G���� F =  0 7 H I H n   0 3 J K J 1   1 3��
�� 
kind K o   0 1���� 0 theitem theItem I m   3 6 L L � M M  F o l d e r G k   :? N N  O P O r   : C Q R Q n   : ? S T S 1   ; ?��
�� 
ascd T o   : ;���� 0 theitem theItem R o      ���� 0 creationdate creationDate P  U V U r   D S W X W c   D O Y Z Y n   D K [ \ [ 1   G K��
�� 
year \ o   D G���� 0 creationdate creationDate Z m   K N��
�� 
TEXT X o      ���� 0 yearcreated yearCreated V  ] ^ ] l  T T��������  ��  ��   ^  _ ` _ l  T T�� a b��   a 4 . Folder name format: [User Base Name] - [Year]    b � c c \   F o l d e r   n a m e   f o r m a t :   [ U s e r   B a s e   N a m e ]   -   [ Y e a r ] `  d e d r   T a f g f b   T ] h i h b   T Y j k j o   T U����  0 foldernamebase folderNameBase k m   U X l l � m m    -   i o   Y \���� 0 yearcreated yearCreated g o      ���� 0 newfoldername newFolderName e  n o n r   b o p q p b   b k r s r l  b g t���� t c   b g u v u o   b c���� 0 	thefolder 	theFolder v m   c f��
�� 
ctxt��  ��   s o   g j���� 0 newfoldername newFolderName q o      ���� 0 newfolderpath newFolderPath o  w x w l  p p��������  ��  ��   x  y z y l  p p�� { |��   { 7 1 Check if the folder for this year already exists    | � } } b   C h e c k   i f   t h e   f o l d e r   f o r   t h i s   y e a r   a l r e a d y   e x i s t s z  ~�� ~ Z   p?  ��� �  I  p |�� ���
�� .coredoexnull���     obj  � 4   p x�� �
�� 
cfol � o   t w���� 0 newfolderpath newFolderPath��   � k    � � �  � � � l   �� � ���   � &   Log the contents before merging    � � � � @   L o g   t h e   c o n t e n t s   b e f o r e   m e r g i n g �  � � � I   ��� ���
�� .ascrcmnt****      � **** � b    � � � � b    � � � � b    � � � � m    � � � � � � @ B e f o r e   m e r g i n g ,   t h e   c o n t e n t s   o f   � o   � ����� 0 newfolderpath newFolderPath � m   � � � � � � �    a r e :   � l  � � ����� � n   � � � � � 2   � ���
�� 
cobj � 4   � ��� �
�� 
cfol � o   � ����� 0 newfolderpath newFolderPath��  ��  ��   �  � � � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 0 I t e m s   t o   b e   m e r g e d   f r o m   � l  � � ����� � c   � � � � � o   � ����� 0 theitem theItem � m   � ���
�� 
ctxt��  ��   � m   � � � � � � �    a r e :   � l  � � ����� � n   � � � � � 2   � ���
�� 
cobj � o   � ����� 0 theitem theItem��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 0 * Merge the folder into the existing folder    � � � � T   M e r g e   t h e   f o l d e r   i n t o   t h e   e x i s t i n g   f o l d e r �  � � � r   � � � � � 4   � ��� �
�� 
cfol � o   � ����� 0 newfolderpath newFolderPath � o      ����  0 existingfolder existingFolder �  � � � Q   � � � � � � I  � ��� � �
�� .coremovenull���     obj  � o   � ����� 0 theitem theItem � �� � �
�� 
insh � o   � �����  0 existingfolder existingFolder � �� ���
�� 
alrp � m   � ���
�� boovtrue��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg��   � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � � & E r r o r   m o v i n g   i t e m :   � o   � ����� 0 errmsg errMsg��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � %  Log the contents after merging    � � � � >   L o g   t h e   c o n t e n t s   a f t e r   m e r g i n g �  ��� � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � > A f t e r   m e r g i n g ,   t h e   c o n t e n t s   o f   � o   � ����� 0 newfolderpath newFolderPath � m   � � � � � � �    a r e :   � l  � � ����� � n   � � � � � 2   � ���
�� 
cobj � 4   � ��� �
�� 
cfol � o   � ����� 0 newfolderpath newFolderPath��  ��  ��  ��  ��   � k   ? � �  � � � l   �� � ���   � F @ Create the folder and move the current item if it doesn't exist    � � � � �   C r e a t e   t h e   f o l d e r   a n d   m o v e   t h e   c u r r e n t   i t e m   i f   i t   d o e s n ' t   e x i s t �  ��� � Q   ? � � � � k  . � �  � � � I ���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m  ��
�� 
cfol � �� � �
�� 
insh � o  �� 0 	thefolder 	theFolder � �~ ��}
�~ 
prdt � K   � � �| ��{
�| 
pnam � o  �z�z 0 newfoldername newFolderName�{  �}   �  ��y � I .�x � �
�x .coremovenull���     obj  � o  �w�w 0 theitem theItem � �v ��u
�v 
insh � 4  "*�t �
�t 
cfol � o  &)�s�s 0 newfolderpath newFolderPath�u  �y   � R      �r ��q
�r .ascrerr ****      � **** � o      �p�p 0 errmsg errMsg�q   � I 6?�o ��n
�o .sysodlogaskr        TEXT � b  6; � � � m  69 � � �   . E r r o r   c r e a t i n g / m o v i n g :   � o  9:�m�m 0 errmsg errMsg�n  ��  ��  ��  ��  ��  �� 0 theitem theItem > o   # $�l�l 0 
folderlist 
folderList��   / m    �                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   , �k l     �j�i�h�j  �i  �h  �k       �g	
�f�e�d�c�b�a�`�g   �_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P
�_ .aevtoappnull  �   � ****�^ 0 	thefolder 	theFolder�]  0 foldernamebase folderNameBase�\ 0 
folderlist 
folderList�[ 0 creationdate creationDate�Z 0 yearcreated yearCreated�Y 0 newfoldername newFolderName�X 0 newfolderpath newFolderPath�W  0 existingfolder existingFolder�V  �U  �T  �S  �R  �Q  �P   �O�N�M�L
�O .aevtoappnull  �   � **** k    I  
    +�K�K  �N  �M   �J�I�J 0 theitem theItem�I 0 errmsg errMsg 0�H �G�F $�E '�D�C�B�A�@�?�>�= L�<�;�:�9�8 l�7�6�5�4�3 � ��2 � ��1�0�/�.�-�,�+ � � ��*�)�(�' �
�H 
prmp
�G .sysostflalis    ��� null�F 0 	thefolder 	theFolder
�E 
dtxt
�D .sysodlogaskr        TEXT
�C 
ttxt�B  0 foldernamebase folderNameBase
�A 
cobj�@ 0 
folderlist 
folderList
�? 
kocl
�> .corecnte****       ****
�= 
kind
�< 
ascd�; 0 creationdate creationDate
�: 
year
�9 
TEXT�8 0 yearcreated yearCreated�7 0 newfoldername newFolderName
�6 
ctxt�5 0 newfolderpath newFolderPath
�4 
cfol
�3 .coredoexnull���     obj 
�2 .ascrcmnt****      � ****�1  0 existingfolder existingFolder
�0 
insh
�/ 
alrp�. 
�- .coremovenull���     obj �, 0 errmsg errMsg�+  
�* 
prdt
�) 
pnam�( 
�' .corecrel****      � null�LJ*��l E�O���l �,E�O�0��-E�O'�[��l kh  ��,a  
�a ,E` O_ a ,a &E` O�a %_ %E` O�a &_ %E` O*a _ /j  �a _ %a %*a _ /�-%j Oa �a &%a  %��-%j O*a _ /E` !O �a "_ !a #ea $ %W X & 'a (�%j Oa )_ %a *%*a _ /�-%j Y A 0*�a a "�a +a ,_ la - .O�a "*a _ /l %W X & 'a /�%j Y h[OY��U6alis    2  Macintosh HD                   BD ����	TEST copy                                                      ����            ����  J cu            (/:Users:flosstradamus:Desktop:TEST copy/   	 T E S T   c o p y    M a c i n t o s h   H D  %Users/flosstradamus/Desktop/TEST copy   /    ��   �  c o o l �&�&     �% �$ �#  �"!  "�!#" � 
�  
sdsk
�! 
cfol# �$$ 
 U s e r s
�" 
cfol! �%%  f l o s s t r a d a m u s
�# 
cfol �&&  D e s k t o p
�$ 
cfol �''  T E S T   c o p y
�% 
cfol �((  F o l d e r   1 )) *�+* ,�-, .�/. 0�10 2�32 �
� 
sdsk
� 
cfol3 �44 
 U s e r s
� 
cfol1 �55  f l o s s t r a d a m u s
� 
cfol/ �66  D e s k t o p
� 
cfol- �77  T E S T   c o p y
� 
cfol+ �88  F o l d e r   2 99 :�;: <�=< >�?> @�A@ B�CB �
� 
sdsk
� 
cfolC �DD 
 U s e r s
� 
cfolA �EE  f l o s s t r a d a m u s
� 
cfol? �FF  D e s k t o p
� 
cfol= �GG  T E S T   c o p y
� 
cfol; �HH  F o l d e r   3 II J�KJ L�ML N�ON P�QP R�SR �
� 
sdsk
� 
cfolS �TT 
 U s e r s
� 
cfolQ �UU  f l o s s t r a d a m u s
� 
cfolO �VV  D e s k t o p
� 
cfolM �WW  T E S T   c o p y
� 
cfolK �XX  c o o l   -   2 0 2 4 ldt     ���f	 �YY  2 0 2 4
 �ZZ  c o o l   -   2 0 2 4 �[[ | M a c i n t o s h   H D : U s e r s : f l o s s t r a d a m u s : D e s k t o p : T E S T   c o p y : c o o l   -   2 0 2 4 \\ ]�^] _�`_ a�ba c�
dc e�	fe �
� 
sdsk
�	 
cfolf �gg 
 U s e r s
�
 
cfold �hh  f l o s s t r a d a m u s
� 
cfolb �ii  D e s k t o p
� 
cfol` �jj  T E S T   c o p y
� 
cfol^ �kk  c o o l   -   2 0 2 4�f  �e  �d  �c  �b  �a  �`  ascr  ��ޭ