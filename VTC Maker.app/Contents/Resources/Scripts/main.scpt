FasdUAS 1.101.10   ��   ��    k             l     ��  ��    t n "on open" handler specifies the code to be executed when the user drops a folder onto the application droplet     � 	 	 �   " o n   o p e n "   h a n d l e r   s p e c i f i e s   t h e   c o d e   t o   b e   e x e c u t e d   w h e n   t h e   u s e r   d r o p s   a   f o l d e r   o n t o   t h e   a p p l i c a t i o n   d r o p l e t   
  
 l     ��  ��    s m dropped_folder variable will be an array of POSIX file paths (Users:tarrlab:Desktop:) of the dropped folders     �   �   d r o p p e d _ f o l d e r   v a r i a b l e   w i l l   b e   a n   a r r a y   o f   P O S I X   f i l e   p a t h s   ( U s e r s : t a r r l a b : D e s k t o p : )   o f   t h e   d r o p p e d   f o l d e r s      i         I     �� ��
�� .aevtodocnull  �    alis  o      ���� 0 dropped_folder  ��    k           l     ��  ��    = 7 Set variable thePath to the path of the dropped folder     �   n   S e t   v a r i a b l e   t h e P a t h   t o   t h e   p a t h   o f   t h e   d r o p p e d   f o l d e r      r         c         n        !   1    ��
�� 
psxp ! o     ���� 0 dropped_folder    m    ��
�� 
ctxt  o      ���� 0 thepath thePath   " # " l   ��������  ��  ��   #  $ % $ l   �� & '��   & K E Check to make sure the required files are in the folder they dropped    ' � ( ( �   C h e c k   t o   m a k e   s u r e   t h e   r e q u i r e d   f i l e s   a r e   i n   t h e   f o l d e r   t h e y   d r o p p e d %  ) * ) l   �� + ,��   + K E If any are missing, display an error dialog with a message, and quit    , � - - �   I f   a n y   a r e   m i s s i n g ,   d i s p l a y   a n   e r r o r   d i a l o g   w i t h   a   m e s s a g e ,   a n d   q u i t *  . / . O    � 0 1 0 k    � 2 2  3 4 3 r     5 6 5 n     7 8 7 4    �� 9
�� 
cobj 9 m    ����  8 o    ���� 0 dropped_folder   6 o      ���� 0 _folder   4  : ; : I   ������
�� .miscactvnull��� ��� obj ��  ��   ;  < = < r     > ? > m     @ @ � A A l T h e   f o l d e r   y o u   d r o p p e d   d o e s   n o t   c o n t a i n   t h e   n e c e s s a r y   ? o      ���� 0 
errorpart1 
errorPart1 =  B C B r      D E D m     F F � G G �   f i l e   t h a t   i s   r e q u i r e d   f o r   V T C   c r e a t i o n .   P l e a s e   d r o p   a   f o l d e r   t h a t   c o n t a i n s   t h e   f i l e . E o      ���� 0 
errorpart2 
errorPart2 C  H I H Z   ! H J���� K J I  ! 1�� L��
�� .coredoexbool        obj  L l  ! - M���� M 6  ! - N O N n  ! $ P Q P 3   " $��
�� 
file Q o   ! "���� 0 _folder   O E   % , R S R 1   & (��
�� 
pnam S m   ) + T T � U U  _ I A��  ��  ��  ��  ��   K k   8 H V V  W X W I  8 A�� Y��
�� .sysodlogaskr        TEXT Y l  8 = Z���� Z b   8 = [ \ [ b   8 ; ] ^ ] o   8 9���� 0 
errorpart1 
errorPart1 ^ m   9 : _ _ � ` ` 6 I n i t i a l   A l i g n m e n t   ( _ I A . t r f ) \ o   ; <���� 0 
errorpart2 
errorPart2��  ��  ��   X  a�� a R   B H���� b
�� .ascrerr ****      � ****��   b �� c��
�� 
errn c m   D E��������  ��   I  d e d Z   I t f g�� h f I  I [�� i��
�� .coredoexbool        obj  i l  I W j���� j 6  I W k l k n  I L m n m 3   J L��
�� 
file n o   I J���� 0 _folder   l E   M V o p o 1   N P��
�� 
pnam p m   Q U q q � r r  _ F A��  ��  ��   g l  ^ ^�� s t��   s   do nothing    t � u u    d o   n o t h i n g��   h k   b t v v  w x w I  b m�� y��
�� .sysodlogaskr        TEXT y l  b i z���� z b   b i { | { b   b g } ~ } o   b c���� 0 
errorpart1 
errorPart1 ~ m   c f   � � � > F i n e - t u n i n g   A l i g n m e n t   ( _ F A . t r f ) | o   g h���� 0 
errorpart2 
errorPart2��  ��  ��   x  ��� � R   n t���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   p q��������  ��   e  ��� � Z   u � � ��� � � I  u ��� ���
�� .coredoexbool        obj  � l  u � ����� � 6  u � � � � n  u x � � � 3   v x��
�� 
file � o   u v���� 0 _folder   � E   y � � � � 1   z |��
�� 
pnam � m   } � � � � � �  . b b x��  ��  ��   � l  � ��� � ���   �   do nothing    � � � �    d o   n o t h i n g��   � k   � � � �  � � � I  � ��� ���
�� .sysodlogaskr        TEXT � l  � � ����� � b   � � � � � b   � � � � � o   � ����� 0 
errorpart1 
errorPart1 � m   � � � � � � � & b o u n d i n g   b o x   ( . b b x ) � o   � ����� 0 
errorpart2 
errorPart2��  ��  ��   �  ��� � R   � ����� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   � ���������  ��  ��   1 m    	 � ��                                                                                  MACS  alis    b  blintz                     �J�rH+   �|
Finder.app                                                      F��R        ����  	                CoreServices    �K/�      �͒     �| Y� Y�  0blintz:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    b l i n t z  &System/Library/CoreServices/Finder.app  / ��   /  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � b \ Set variable theScript to the path of the Ruby script located in the app's package contents    � � � � �   S e t   v a r i a b l e   t h e S c r i p t   t o   t h e   p a t h   o f   t h e   R u b y   s c r i p t   l o c a t e d   i n   t h e   a p p ' s   p a c k a g e   c o n t e n t s �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
strq � l  � � ����� � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � c   � � � � � l  � � ����� � l  � � ����� � b   � � � � � l  � � ����� � I  � ��� � �
�� .earsffdralis        afdr �  f   � � � �� ���
�� 
rtyp � m   � ���
�� 
ctxt��  ��  ��   � m   � � � � � � � * C o n t e n t s : V T C _ M a k e r . r b��  ��  ��  ��   � m   � ���
�� 
alis��  ��  ��  ��   � o      ���� 0 	thescript 	theScript �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � b \ Execute the Ruby script VTC_Maker.rb,  set the_path to the items the Ruby script sends back    � � � � �   E x e c u t e   t h e   R u b y   s c r i p t   V T C _ M a k e r . r b ,     s e t   t h e _ p a t h   t o   t h e   i t e m s   t h e   R u b y   s c r i p t   s e n d s   b a c k �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 
 R u b y   � o   � ����� 0 	thescript 	theScript � m   � � � � � � �    � l  � � ����� � n   � � � � � 1   � ���
�� 
strq � l  � � ����� � n   � � � � � 1   � ���
�� 
psxp � o   � ����� 0 thepath thePath��  ��  ��  ��  ��   � o      ���� 0 the_path   �  � � � l  � ��������  ��  �   �  � � � l  � ��~ � ��~   � Z T Once the Ruby script finishes, it'll send back the path to the text file it created    � � � � �   O n c e   t h e   R u b y   s c r i p t   f i n i s h e s ,   i t ' l l   s e n d   b a c k   t h e   p a t h   t o   t h e   t e x t   f i l e   i t   c r e a t e d �  � � � l  � ��} � ��}   � m g The path is stored in the_path, so we'll extract it by setting a new variable to the items of the_path    � � � � �   T h e   p a t h   i s   s t o r e d   i n   t h e _ p a t h ,   s o   w e ' l l   e x t r a c t   i t   b y   s e t t i n g   a   n e w   v a r i a b l e   t o   t h e   i t e m s   o f   t h e _ p a t h �  � � � r   � � � � � c   � � � � � n   � � � � � 2  � ��|
�| 
cobj � o   � ��{�{ 0 the_path   � m   � ��z
�z 
TEXT � o      �y�y 0 	text_path   �  � � � l  � ��x�w�v�x  �w  �v   �  � � � l  � ��u � ��u   � � z Copy the_path to the clipboard so it can be easily pasted into the JavaScript BV script that the user will run afterwards    � � � � �   C o p y   t h e _ p a t h   t o   t h e   c l i p b o a r d   s o   i t   c a n   b e   e a s i l y   p a s t e d   i n t o   t h e   J a v a S c r i p t   B V   s c r i p t   t h a t   t h e   u s e r   w i l l   r u n   a f t e r w a r d s �  � � � I  � ��t ��s
�t .JonspClpnull���     **** � o   � ��r�r 0 	text_path  �s   �  � � � l  � ��q�p�o�q  �p  �o   �  � � � l  � ��n � �n   �   Open BrainVoyager     � $   O p e n   B r a i n V o y a g e r �  O  � � I  � ��m�l�k
�m .miscactvnull��� ��� obj �l  �k   m   � ��                                                                                      @ alis    �  blintz                     �J�rH+   -BrainVoyager QX.app                                             @��u�        ����  	                BrainVoyager QX_2.6     �K/�      ���.     -  &z  =blintz:Applications: BrainVoyager QX_2.6: BrainVoyager QX.app   (  B r a i n V o y a g e r   Q X . a p p    b l i n t z  4Applications/BrainVoyager QX_2.6/BrainVoyager QX.app  / ��    l  � ��j	
�j  	 + % Open the "Edit and Run Scripts" pane   
 � J   O p e n   t h e   " E d i t   a n d   R u n   S c r i p t s "   p a n e �i I   ��h�g�h 0 
menu_click   �f J   � �  m   � � �  B r a i n V o y a g e r   Q X  m   � � �  S c r i p t s �e m   � � � . E d i t   a n d   R u n   S c r i p t s . . .�e  �f  �g  �i     l     �d�c�b�d  �c  �b    l     �a �a   l f Both handlers below were obtained from: http://hints.macworld.com/article.php?story=20060921045743404     �!! �   B o t h   h a n d l e r s   b e l o w   w e r e   o b t a i n e d   f r o m :   h t t p : / / h i n t s . m a c w o r l d . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 6 0 9 2 1 0 4 5 7 4 3 4 0 4 "#" l     �`�_�^�`  �_  �^  # $%$ i    &'& I      �](�\�] 0 
menu_click  ( )�[) o      �Z�Z 0 mlist mList�[  �\  ' k     T** +,+ q      -- �Y.�Y 0 appname appName. �X/�X 0 topmenu topMenu/ �W�V�W 0 r  �V  , 010 l     �U�T�S�U  �T  �S  1 232 l     �R45�R  4   Validate our input   5 �66 &   V a l i d a t e   o u r   i n p u t3 787 Z    9:�Q�P9 A     ;<; n    =>= 1    �O
�O 
leng> o     �N�N 0 mlist mList< m    �M�M : R    �L?�K
�L .ascrerr ****      � ****? m   
 @@ �AA 8 M e n u   l i s t   i s   n o t   l o n g   e n o u g h�K  �Q  �P  8 BCB l   �J�I�H�J  �I  �H  C DED l   �GFG�G  F ; 5 Set these variables for clarity and brevity later on   G �HH j   S e t   t h e s e   v a r i a b l e s   f o r   c l a r i t y   a n d   b r e v i t y   l a t e r   o nE IJI r    +KLK l   M�F�EM n    NON 7  �DPQ
�D 
cobjP m    �C�C Q m    �B�B O o    �A�A 0 mlist mList�F  �E  L J      RR STS o      �@�@ 0 appname appNameT U�?U o      �>�> 0 topmenu topMenu�?  J VWV r   , ;XYX l  , 9Z�=�<Z n   , 9[\[ 7 - 9�;]^
�; 
cobj] m   1 3�:�: ^ l  4 8_�9�8_ n  4 8`a` 1   6 8�7
�7 
lenga o   4 6�6�6 0 mlist mList�9  �8  \ o   , -�5�5 0 mlist mList�=  �<  Y o      �4�4 0 r  W bcb l  < <�3�2�1�3  �2  �1  c ded l  < <�0fg�0  f A ; This overly-long line calls the menu_recurse function with   g �hh v   T h i s   o v e r l y - l o n g   l i n e   c a l l s   t h e   m e n u _ r e c u r s e   f u n c t i o n   w i t he iji l  < <�/kl�/  k > 8 two arguments: r, and a reference to the top-level menu   l �mm p   t w o   a r g u m e n t s :   r ,   a n d   a   r e f e r e n c e   t o   t h e   t o p - l e v e l   m e n uj n�.n O  < Topo n  @ Sqrq I   A S�-s�,�- 0 menu_click_recurse  s tut o   A B�+�+ 0 r  u v�*v l  B Ow�)�(w n  B Oxyx l  L Oz�'�&z 4   L O�%{
�% 
menE{ o   M N�$�$ 0 topmenu topMenu�'  �&  y n  B L|}| l  I L~�#�"~ 4   I L�!
�! 
mbri o   J K� �  0 topmenu topMenu�#  �"  } n  B I��� l 	 F I���� l  F I���� 4   F I��
� 
mbar� m   G H�� �  �  �  �  � l  B F���� 4   B F��
� 
prcs� o   D E�� 0 appname appName�  �  �)  �(  �*  �,  r  f   @ Ap m   < =���                                                                                  sevs  alis    �  blintz                     �J�rH+   �|System Events.app                                               c��Ɖ        ����  	                CoreServices    �K/�      ���     �| Y� Y�  7blintz:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    b l i n t z  -System/Library/CoreServices/System Events.app   / ��  �.  % ��� l     ����  �  �  � ��� i    ��� I      ���� 0 menu_click_recurse  � ��� o      �� 0 mlist mList� ��� o      �� 0 parentobject parentObject�  �  � k     H�� ��� q      �� ��� 0 f  � ��
� 0 r  �
  � ��� l     �	���	  �  �  � ��� l     ����  � , & `f` = first item, `r` = rest of items   � ��� L   ` f `   =   f i r s t   i t e m ,   ` r `   =   r e s t   o f   i t e m s� ��� r     ��� n     ��� 4    ��
� 
cobj� m    �� � o     �� 0 mlist mList� o      �� 0 f  � ��� Z   "���� � ?    ��� n   
��� 1    
��
�� 
leng� o    ���� 0 mlist mList� m   
 ���� � r    ��� l   ������ n    ��� 7  ����
�� 
cobj� m    ���� � l   ������ n   ��� 1    ��
�� 
leng� o    ���� 0 mlist mList��  ��  � o    ���� 0 mlist mList��  ��  � o      ���� 0 r  �  �   � ��� l  # #��������  ��  ��  � ��� l  # #������  � < 6 either actually click the menu item, or recurse again   � ��� l   e i t h e r   a c t u a l l y   c l i c k   t h e   m e n u   i t e m ,   o r   r e c u r s e   a g a i n� ���� O   # H��� Z   ' G������ =  ' ,��� n  ' *��� 1   ( *��
�� 
leng� o   ' (���� 0 mlist mList� m   * +���� � I  / 7�����
�� .prcsclicuiel    ��� uiel� n  / 3��� 4   0 3���
�� 
menI� o   1 2���� 0 f  � o   / 0���� 0 parentobject parentObject��  ��  � n  : G��� I   ; G������� 0 menu_click_recurse  � ��� o   ; <���� 0 r  � ���� l  < C������ n  < C��� l  @ C������ 4   @ C���
�� 
menE� o   A B���� 0 f  ��  ��  � n  < @��� l  = @������ 4   = @���
�� 
menI� o   > ?���� 0 f  ��  ��  � o   < =���� 0 parentobject parentObject��  ��  ��  ��  �  f   : ;� m   # $���                                                                                  sevs  alis    �  blintz                     �J�rH+   �|System Events.app                                               c��Ɖ        ����  	                CoreServices    �K/�      ���     �| Y� Y�  7blintz:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    b l i n t z  -System/Library/CoreServices/System Events.app   / ��  ��  �       ��������  � ������
�� .aevtodocnull  �    alis�� 0 
menu_click  �� 0 menu_click_recurse  � �� ��������
�� .aevtodocnull  �    alis�� 0 dropped_folder  ��  � ������������������ 0 dropped_folder  �� 0 thepath thePath�� 0 _folder  �� 0 
errorpart1 
errorPart1�� 0 
errorpart2 
errorPart2�� 0 	thescript 	theScript�� 0 the_path  �� 0 	text_path  � #���� ����� @ F����� T�� _������ q  � ����� ����� � ���������
�� 
psxp
�� 
ctxt
�� 
cobj
�� .miscactvnull��� ��� obj 
�� 
file�  
�� 
pnam
�� .coredoexbool        obj 
�� .sysodlogaskr        TEXT
�� 
errn����
�� 
rtyp
�� .earsffdralis        afdr
�� 
alis
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
TEXT
�� .JonspClpnull���     ****�� 0 
menu_click  ����,�&E�O� ���k/E�O*j O�E�O�E�O��.�[�,\Z�@1j  hY ��%�%j O)��lhO��.�[�,\Za @1j  hY �a %�%j O)��lhO��.�[�,\Za @1j  hY �a %�%j O)��lhUO)a �l a %a &�,a ,E�Oa �%a %��,a ,%j E�O��-a &E�O�j Oa  *j UO*a a  a !mvk+ "� ��'���������� 0 
menu_click  �� ����� �  ���� 0 mlist mList��  � ���������� 0 mlist mList�� 0 appname appName�� 0 topmenu topMenu�� 0 r  � 	��@�������������
�� 
leng
�� 
cobj
�� 
prcs
�� 
mbar
�� 
mbri
�� 
menE�� 0 menu_click_recurse  �� U��,m 	)j�Y hO�[�\[Zk\Zl2E[�k/E�Z[�l/E�ZO�[�\[Zm\Z��,2E�O� )�*�/�k/�/�/l+ U� ������������� 0 menu_click_recurse  �� ����� �  ������ 0 mlist mList�� 0 parentobject parentObject��  � ���������� 0 mlist mList�� 0 parentobject parentObject�� 0 f  �� 0 r  � �������������
�� 
cobj
�� 
leng
�� 
menI
�� .prcsclicuiel    ��� uiel
�� 
menE�� 0 menu_click_recurse  �� I��k/E�O��,k �[�\[Zl\Z��,2E�Y hO� "��,k  ��/j Y )���/�/l+ Uascr  ��ޭ