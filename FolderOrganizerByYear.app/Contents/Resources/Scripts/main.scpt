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
�a ,E` O_ a ,a &E` O�a %_ %E` O�a &_ %E` O*a _ /j  �a _ %a %*a _ /�-%j Oa �a &%a  %��-%j O*a _ /E` !O �a "_ !a #ea $ %W X & 'a (�%j Oa )_ %a *%*a _ /�-%j Y A 0*�a a "�a +a ,_ la - .O�a "*a _ /l %W X & 'a /�%j Y h[OY��U*alis    &  
BINARY BIN                 �*�H+   ��oOOPS                                                            �[{��W�        ����  I                 �+�      ���q    
  O O P S   
 B I N A R Y   B I N  +/Projects/Music Projects/Working Demos/OOPS   /Volumes/BINARY BIN ��       � 
 D E M O S �&�& = =  !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQ RR S�%TS U�$VU W�#XW Y�"ZY [�!\[ � ]
�  
cdis] �^^  B I N A R Y   B I N
�! 
cfol\ �__  P r o j e c t s
�" 
cfolZ �``  M u s i c   P r o j e c t s
�# 
cfolX �aa  W o r k i n g   D e m o s
�$ 
cfolV �bb  O O P S
�% 
cfolT �cc 4 1 1 6 6   D R L L Y N A T I O N   2   P r o j e c t dd e�fe g�hg i�ji k�lk m�nm �o
� 
cdiso �pp  B I N A R Y   B I N
� 
cfoln �qq  P r o j e c t s
� 
cfoll �rr  M u s i c   P r o j e c t s
� 
cfolj �ss  W o r k i n g   D e m o s
� 
cfolh �tt  O O P S
� 
cfolf �uu  2 0 1 8   T E M P L A T E vv w�xw y�zy {�|{ }�~} �� ��
� 
cdis� ���  B I N A R Y   B I N
� 
cfol� ���  P r o j e c t s
� 
cfol~ ���  M u s i c   P r o j e c t s
� 
cfol| ���  W o r k i n g   D e m o s
� 
cfolz ���  O O P S
� 
cfolx ��� 2 2 0 2 0   K E N N Y   T E M P L A T E   [ V O X ] �� ���� ���� ���� ���� ���� ��
� 
cdis� ���  B I N A R Y   B I N
� 
cfol� ���  P r o j e c t s
� 
cfol� ���  M u s i c   P r o j e c t s
� 
cfol� ���  W o r k i n g   D e m o s
� 
cfol� ���  O O P S
� 
cfol� ��� $ 3 r d   P a r t y   P r o j e c t s �� ���� ���� ���� ��
�� ��	�� ��
� 
cdis� ���  B I N A R Y   B I N
�	 
cfol� ���  P r o j e c t s
�
 
cfol� ���  M u s i c   P r o j e c t s
� 
cfol� ���  W o r k i n g   D e m o s
� 
cfol� ���  O O P S
� 
cfol� ��� , A I   m u s i c   T w e a k   P r o j e c t �� ���� ���� ���� ���� ���� ��
� 
cdis� ���  B I N A R Y   B I N
� 
cfol� ���  P r o j e c t s
� 
cfol� ���  M u s i c   P r o j e c t s
� 
cfol� ���  W o r k i n g   D e m o s
� 
cfol� ���  O O P S
� 
cfol� ��� < A i n t   N o   C i t y   H o t t e r   T h a n   M i a m i �� ���� �� �� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�  
cfol� ���  O O P S
� 
cfol� ��� $ B l e e d   i n s t   a n d   v o c �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ���  B l o w i n U p �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ��� " C A R M A C K I N   P r o j e c t �� ����� ����� ����� ����� ����� ���
�� 
cdis� �    B I N A R Y   B I N
�� 
cfol� �  P r o j e c t s
�� 
cfol� �  M u s i c   P r o j e c t s
�� 
cfol� �  W o r k i n g   D e m o s
�� 
cfol� �  O O P S
�� 
cfol� �  C a n I g e t R e m i x  �� 	��
	 �� �� �� ��
�� 
cdis �  B I N A R Y   B I N
�� 
cfol �  P r o j e c t s
�� 
cfol �  M u s i c   P r o j e c t s
�� 
cfol �  W o r k i n g   D e m o s
�� 
cfol
 �  O O P S
�� 
cfol �  C o o l E l e c t r o   �� �� �� ��  !��"! ��#
�� 
cdis# �$$  B I N A R Y   B I N
�� 
cfol" �%%  P r o j e c t s
�� 
cfol  �&&  M u s i c   P r o j e c t s
�� 
cfol �''  W o r k i n g   D e m o s
�� 
cfol �((  O O P S
�� 
cfol �))  C r e a m J u k e d! ** +��,+ -��.- /��0/ 1��21 3��43 ��5
�� 
cdis5 �66  B I N A R Y   B I N
�� 
cfol4 �77  P r o j e c t s
�� 
cfol2 �88  M u s i c   P r o j e c t s
�� 
cfol0 �99  W o r k i n g   D e m o s
�� 
cfol. �::  O O P S
�� 
cfol, �;; F D I R T Y   A U D I O   X   F L O S S   N E W   V O X   P r o j e c t" << =��>= ?��@? A��BA C��DC E��FE ��G
�� 
cdisG �HH  B I N A R Y   B I N
�� 
cfolF �II  P r o j e c t s
�� 
cfolD �JJ  M u s i c   P r o j e c t s
�� 
cfolB �KK  W o r k i n g   D e m o s
�� 
cfol@ �LL  O O P S
�� 
cfol> �MM ( D I S C O   P O T A T O   P r o j e c t# NN O��PO Q��RQ S��TS U��VU W��XW ��Y
�� 
cdisY �ZZ  B I N A R Y   B I N
�� 
cfolX �[[  P r o j e c t s
�� 
cfolV �\\  M u s i c   P r o j e c t s
�� 
cfolT �]]  W o r k i n g   D e m o s
�� 
cfolR �^^  O O P S
�� 
cfolP �__ & D I S T O   X   F L O S S   X   I T H$ `` a��ba c��dc e��fe g��hg i��ji ��k
�� 
cdisk �ll  B I N A R Y   B I N
�� 
cfolj �mm  P r o j e c t s
�� 
cfolh �nn  M u s i c   P r o j e c t s
�� 
cfolf �oo  W o r k i n g   D e m o s
�� 
cfold �pp  O O P S
�� 
cfolb �qq   E Z   K E Y S   R E - R O U T E% rr s��ts u��vu w��xw y��zy {��|{ ��}
�� 
cdis} �~~  B I N A R Y   B I N
�� 
cfol| �  P r o j e c t s
�� 
cfolz ���  M u s i c   P r o j e c t s
�� 
cfolx ���  W o r k i n g   D e m o s
�� 
cfolv ���  O O P S
�� 
cfolt ���  E f f e c t s& �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ��� t F L O S S   G U C C I   G A N G   R U F F   I N T R O   P R O J E C T   F O R   C U R T   4   M A Y   P r o j e c t' �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ���  F L O S S   J T R E E   B R 1( �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ��� P F L O S S T R A D A M U S   -   P U T   Y O U R   H O O D   U P   P r o j e c t) �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ��� 0 F L O S S X V R G   -   P U M P T H I S   1 5 0* �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ��� J F L _ I n d i a _ M a l e   B o u l   V o c a l s _ F _ 9 0 B P M _ 0 2 1+ �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ��� J F R E E D O M   2 0 2 1   R E M A K E   4   n o   p l u g   P r o j e c t, �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� �    O O P S
�� 
cfol� � 6 F R E E D O M   2 0 2 1   R E M A K E   P r o j e c t-  �� �� �� 	��
	 �� ��
�� 
cdis �  B I N A R Y   B I N
�� 
cfol �  P r o j e c t s
�� 
cfol
 �  M u s i c   P r o j e c t s
�� 
cfol �  W o r k i n g   D e m o s
�� 
cfol �  O O P S
�� 
cfol � ( F l o s s   S e s s i o n   S t e m s  .  �� �� �� �� �� ��
�� 
cdis �    B I N A R Y   B I N
�� 
cfol �!!  P r o j e c t s
�� 
cfol �""  M u s i c   P r o j e c t s
�� 
cfol �##  W o r k i n g   D e m o s
�� 
cfol �$$  O O P S
�� 
cfol �%% D F l o s s   x   Y C   x   G T A -   J i n y a b o p   ( S t e m s )/ && '��(' )��*) +��,+ -��.- /��0/ ��1
�� 
cdis1 �22  B I N A R Y   B I N
�� 
cfol0 �33  P r o j e c t s
�� 
cfol. �44  M u s i c   P r o j e c t s
�� 
cfol, �55  W o r k i n g   D e m o s
�� 
cfol* �66  O O P S
�� 
cfol( �77 2 G O L D E N   G I R L S   E D I T   P r o j e c t0 88 9��:9 ;��<; =��>= ?��@? A�BA �~C
�~ 
cdisC �DD  B I N A R Y   B I N
� 
cfolB �EE  P r o j e c t s
�� 
cfol@ �FF  M u s i c   P r o j e c t s
�� 
cfol> �GG  W o r k i n g   D e m o s
�� 
cfol< �HH  O O P S
�� 
cfol: �II F G l o w   i n   t h e   d a r k   s c o b i i   v e r s i o n   ( 1 )1 JJ K�}LK M�|NM O�{PO Q�zRQ S�yTS �xU
�x 
cdisU �VV  B I N A R Y   B I N
�y 
cfolT �WW  P r o j e c t s
�z 
cfolR �XX  M u s i c   P r o j e c t s
�{ 
cfolP �YY  W o r k i n g   D e m o s
�| 
cfolN �ZZ  O O P S
�} 
cfolL �[[  H I O U A W S E W2 \\ ]�w^] _�v`_ a�uba c�tdc e�sfe �rg
�r 
cdisg �hh  B I N A R Y   B I N
�s 
cfolf �ii  P r o j e c t s
�t 
cfold �jj  M u s i c   P r o j e c t s
�u 
cfolb �kk  W o r k i n g   D e m o s
�v 
cfol` �ll  O O P S
�w 
cfol^ �mm 0 H O T   P O T A T O   B L I N K   P r o j e c t3 nn o�qpo q�prq s�ots u�nvu w�mxw �ly
�l 
cdisy �zz  B I N A R Y   B I N
�m 
cfolx �{{  P r o j e c t s
�n 
cfolv �||  M u s i c   P r o j e c t s
�o 
cfolt �}}  W o r k i n g   D e m o s
�p 
cfolr �~~  O O P S
�q 
cfolp � 2 H O T   P O T A T O   T R A N C E   P r o j e c t4 �� ��k�� ��j�� ��i�� ��h�� ��g�� �f�
�f 
cdis� ���  B I N A R Y   B I N
�g 
cfol� ���  P r o j e c t s
�h 
cfol� ���  M u s i c   P r o j e c t s
�i 
cfol� ���  W o r k i n g   D e m o s
�j 
cfol� ���  O O P S
�k 
cfol� ���  H O U S E R E M I X5 �� ��e�� ��d�� ��c�� ��b�� ��a�� �`�
�` 
cdis� ���  B I N A R Y   B I N
�a 
cfol� ���  P r o j e c t s
�b 
cfol� ���  M u s i c   P r o j e c t s
�c 
cfol� ���  W o r k i n g   D e m o s
�d 
cfol� ���  O O P S
�e 
cfol� ���  I D G A F   P r o j e c t6 �� ��_�� ��^�� ��]�� ��\�� ��[�� �Z�
�Z 
cdis� ���  B I N A R Y   B I N
�[ 
cfol� ���  P r o j e c t s
�\ 
cfol� ���  M u s i c   P r o j e c t s
�] 
cfol� ���  W o r k i n g   D e m o s
�^ 
cfol� ���  O O P S
�_ 
cfol� ���  a f r i k a a b a m m7 �� ��Y�� ��X�� ��W�� ��V�� ��U�� �T�
�T 
cdis� ���  B I N A R Y   B I N
�U 
cfol� ���  P r o j e c t s
�V 
cfol� ���  M u s i c   P r o j e c t s
�W 
cfol� ���  W o r k i n g   D e m o s
�X 
cfol� ���  O O P S
�Y 
cfol� ���  a f r i k a a b a m m 28 �� ��S�� ��R�� ��Q�� ��P�� ��O�� �N�
�N 
cdis� ���  B I N A R Y   B I N
�O 
cfol� ���  P r o j e c t s
�P 
cfol� ���  M u s i c   P r o j e c t s
�Q 
cfol� ���  W o r k i n g   D e m o s
�R 
cfol� ���  O O P S
�S 
cfol� ���  b a n g M y R e m i x9 �� ��M�� ��L�� ��K�� ��J�� ��I�� �H�
�H 
cdis� ���  B I N A R Y   B I N
�I 
cfol� ���  P r o j e c t s
�J 
cfol� ���  M u s i c   P r o j e c t s
�K 
cfol� ���  W o r k i n g   D e m o s
�L 
cfol� ���  O O P S
�M 
cfol� ���  b e a t b o x R o c k: �� ��G�� ��F�� ��E�� ��D�� ��C�� �B�
�B 
cdis� ���  B I N A R Y   B I N
�C 
cfol� ���  P r o j e c t s
�D 
cfol� ���  M u s i c   P r o j e c t s
�E 
cfol� ���  W o r k i n g   D e m o s
�F 
cfol� ���  O O P S
�G 
cfol� ���   b l o w j o b B a l t i m o r e; �� ��A � �@ �? �> �= �<	
�< 
cdis	 �

  B I N A R Y   B I N
�= 
cfol �  P r o j e c t s
�> 
cfol �  M u s i c   P r o j e c t s
�? 
cfol �  W o r k i n g   D e m o s
�@ 
cfol �  O O P S
�A 
cfol  �  b o n e r t a s t e r<  �; �: �9 �8 �7 �6
�6 
cdis �  B I N A R Y   B I N
�7 
cfol �  P r o j e c t s
�8 
cfol �  M u s i c   P r o j e c t s
�9 
cfol �  W o r k i n g   D e m o s
�: 
cfol �    O O P S
�; 
cfol �!!  c h a i n J u k e= "" #�5$# %�4&% '�3(' )�2*) +�1,+ �0-
�0 
cdis- �..  B I N A R Y   B I N
�1 
cfol, �//  P r o j e c t s
�2 
cfol* �00  M u s i c   P r o j e c t s
�3 
cfol( �11  W o r k i n g   D e m o s
�4 
cfol& �22  O O P S
�5 
cfol$ �33 " c o n t r o l   s h a k e   p o p> 44 5�/65 7�.87 9�-:9 ;�,<; =�+>= �*?
�* 
cdis? �@@  B I N A R Y   B I N
�+ 
cfol> �AA  P r o j e c t s
�, 
cfol< �BB  M u s i c   P r o j e c t s
�- 
cfol: �CC  W o r k i n g   D e m o s
�. 
cfol8 �DD  O O P S
�/ 
cfol6 �EE 
 c r e a m? FF G�)HG I�(JI K�'LK M�&NM O�%PO �$Q
�$ 
cdisQ �RR  B I N A R Y   B I N
�% 
cfolP �SS  P r o j e c t s
�& 
cfolN �TT  M u s i c   P r o j e c t s
�' 
cfolL �UU  W o r k i n g   D e m o s
�( 
cfolJ �VV  O O P S
�) 
cfolH �WW  d o i t n e w@ XX Y�#ZY [�"\[ ]�!^] _� `_ a�ba �c
� 
cdisc �dd  B I N A R Y   B I N
� 
cfolb �ee  P r o j e c t s
�  
cfol` �ff  M u s i c   P r o j e c t s
�! 
cfol^ �gg  W o r k i n g   D e m o s
�" 
cfol\ �hh  O O P S
�# 
cfolZ �ii  d o i t n o wA jj k�lk m�nm o�po q�rq s�ts �u
� 
cdisu �vv  B I N A R Y   B I N
� 
cfolt �ww  P r o j e c t s
� 
cfolr �xx  M u s i c   P r o j e c t s
� 
cfolp �yy  W o r k i n g   D e m o s
� 
cfoln �zz  O O P S
� 
cfoll �{{ ( d r u m s   o n l y   t r a p   d e m oB || }�~} �� ���� ���� ���� ��
� 
cdis� ���  B I N A R Y   B I N
� 
cfol� ���  P r o j e c t s
� 
cfol� ���  M u s i c   P r o j e c t s
� 
cfol� ���  W o r k i n g   D e m o s
� 
cfol� ���  O O P S
� 
cfol~ ���  d r u n k sC �� ���� ���� ���� ���� ���� ��
� 
cdis� ���  B I N A R Y   B I N
� 
cfol� ���  P r o j e c t s
� 
cfol� ���  M u s i c   P r o j e c t s
� 
cfol� ���  W o r k i n g   D e m o s
� 
cfol� ���  O O P S
� 
cfol� ���  e t e r n i a l s l s l sD �� ���� ��
�� ��	�� ���� ���� ��
� 
cdis� ���  B I N A R Y   B I N
� 
cfol� ���  P r o j e c t s
� 
cfol� ���  M u s i c   P r o j e c t s
�	 
cfol� ���  W o r k i n g   D e m o s
�
 
cfol� ���  O O P S
� 
cfol� ���  f e a rE �� ���� ���� ���� ���� ���� � �
�  
cdis� ���  B I N A R Y   B I N
� 
cfol� ���  P r o j e c t s
� 
cfol� ���  M u s i c   P r o j e c t s
� 
cfol� ���  W o r k i n g   D e m o s
� 
cfol� ���  O O P S
� 
cfol� ���  f e l i z R e g g a e t o nF �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ���  f u c k k aG �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ���  f xH �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ���  g a n g s t aI �� ����� ����� ��� � �� �� ��
�� 
cdis �  B I N A R Y   B I N
�� 
cfol �  P r o j e c t s
�� 
cfol �  M u s i c   P r o j e c t s
�� 
cfol  �		  W o r k i n g   D e m o s
�� 
cfol� �

  O O P S
�� 
cfol� �  g e t g e t b i g g i eJ  �� �� �� �� �� ��
�� 
cdis �  B I N A R Y   B I N
�� 
cfol �  P r o j e c t s
�� 
cfol �  M u s i c   P r o j e c t s
�� 
cfol �  W o r k i n g   D e m o s
�� 
cfol �  O O P S
�� 
cfol �  g h e t t o t e x kK  ��  !��"! #��$# %��&% '��(' ��)
�� 
cdis) �**  B I N A R Y   B I N
�� 
cfol( �++  P r o j e c t s
�� 
cfol& �,,  M u s i c   P r o j e c t s
�� 
cfol$ �--  W o r k i n g   D e m o s
�� 
cfol" �..  O O P S
�� 
cfol  �//  g o o g l y j u k eL 00 1��21 3��43 5��65 7��87 9��:9 ��;
�� 
cdis; �<<  B I N A R Y   B I N
�� 
cfol: �==  P r o j e c t s
�� 
cfol8 �>>  M u s i c   P r o j e c t s
�� 
cfol6 �??  W o r k i n g   D e m o s
�� 
cfol4 �@@  O O P S
�� 
cfol2 �AA  g r e y w o l fM BB C��DC E��FE G��HG I��JI K��LK ��M
�� 
cdisM �NN  B I N A R Y   B I N
�� 
cfolL �OO  P r o j e c t s
�� 
cfolJ �PP  M u s i c   P r o j e c t s
�� 
cfolH �QQ  W o r k i n g   D e m o s
�� 
cfolF �RR  O O P S
�� 
cfolD �SS 
 h e h e hN TT U��VU W��XW Y��ZY [��\[ ]��^] ��_
�� 
cdis_ �``  B I N A R Y   B I N
�� 
cfol^ �aa  P r o j e c t s
�� 
cfol\ �bb  M u s i c   P r o j e c t s
�� 
cfolZ �cc  W o r k i n g   D e m o s
�� 
cfolX �dd  O O P S
�� 
cfolV �ee  h o l y S h i tO ff g��hg i��ji k��lk m��nm o��po ��q
�� 
cdisq �rr  B I N A R Y   B I N
�� 
cfolp �ss  P r o j e c t s
�� 
cfoln �tt  M u s i c   P r o j e c t s
�� 
cfoll �uu  W o r k i n g   D e m o s
�� 
cfolj �vv  O O P S
�� 
cfolh �ww  h o t b 4 v o c a l C h o pP xx y��zy {��|{ }��~} ��� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol~ ���  W o r k i n g   D e m o s
�� 
cfol| ���  O O P S
�� 
cfolz ���  h o u s e s a s sQ �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ���  h y p y M i c k d y ldt     ��X�	 ���  2 0 2 4
 ���  D E M O S   -   2 0 2 4 ��� � B I N A R Y   B I N : P r o j e c t s : M u s i c   P r o j e c t s : W o r k i n g   D e m o s : O O P S : D E M O S   -   2 0 2 4 �� ����� ����� ����� ����� ����� ���
�� 
cdis� ���  B I N A R Y   B I N
�� 
cfol� ���  P r o j e c t s
�� 
cfol� ���  M u s i c   P r o j e c t s
�� 
cfol� ���  W o r k i n g   D e m o s
�� 
cfol� ���  O O P S
�� 
cfol� ���  D E M O S   -   2 0 2 4�f  �e  �d  �c  �b  �a  �`   ascr  ��ޭ