Ў╦
юы
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ї
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Й
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.4.12v2.4.0-49-g85c8b2a817f8ЛЬ
і
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
Ѓ
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
і
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
Ѓ
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
І
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*$
shared_nameblock2_conv1/kernel
ё
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@ђ*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:ђ*
dtype0
ї
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock2_conv2/kernel
Ё
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:ђђ*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:ђ*
dtype0
ї
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock3_conv1/kernel
Ё
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:ђђ*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:ђ*
dtype0
ї
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock3_conv2/kernel
Ё
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:ђђ*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:ђ*
dtype0
ї
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock3_conv3/kernel
Ё
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:ђђ*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:ђ*
dtype0
ї
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock4_conv1/kernel
Ё
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:ђђ*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:ђ*
dtype0
ї
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock4_conv2/kernel
Ё
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:ђђ*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:ђ*
dtype0
ї
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock4_conv3/kernel
Ё
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:ђђ*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:ђ*
dtype0
ї
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock5_conv1/kernel
Ё
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:ђђ*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:ђ*
dtype0
ї
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock5_conv2/kernel
Ё
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:ђђ*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:ђ*
dtype0
ї
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*$
shared_nameblock5_conv3/kernel
Ё
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:ђђ*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:ђ*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	ђ*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
џ
Adam/block5_conv3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*+
shared_nameAdam/block5_conv3/kernel/m
Њ
.Adam/block5_conv3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block5_conv3/kernel/m*(
_output_shapes
:ђђ*
dtype0
Ѕ
Adam/block5_conv3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*)
shared_nameAdam/block5_conv3/bias/m
ѓ
,Adam/block5_conv3/bias/m/Read/ReadVariableOpReadVariableOpAdam/block5_conv3/bias/m*
_output_shapes	
:ђ*
dtype0
Є
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*&
shared_nameAdam/dense_1/kernel/m
ђ
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	ђ*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
џ
Adam/block5_conv3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*+
shared_nameAdam/block5_conv3/kernel/v
Њ
.Adam/block5_conv3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block5_conv3/kernel/v*(
_output_shapes
:ђђ*
dtype0
Ѕ
Adam/block5_conv3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*)
shared_nameAdam/block5_conv3/bias/v
ѓ
,Adam/block5_conv3/bias/v/Read/ReadVariableOpReadVariableOpAdam/block5_conv3/bias/v*
_output_shapes	
:ђ*
dtype0
Є
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*&
shared_nameAdam/dense_1/kernel/v
ђ
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	ђ*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
┌h
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ћh
valueІhBѕh BЂh
Ў
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
layer-19
layer-20
layer_with_weights-13
layer-21
layer-22
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
h

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
R
*regularization_losses
+trainable_variables
,	variables
-	keras_api
h

.kernel
/bias
0regularization_losses
1trainable_variables
2	variables
3	keras_api
h

4kernel
5bias
6regularization_losses
7trainable_variables
8	variables
9	keras_api
R
:regularization_losses
;trainable_variables
<	variables
=	keras_api
h

>kernel
?bias
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
h

Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
h

Jkernel
Kbias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
R
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
h

Tkernel
Ubias
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
h

Zkernel
[bias
\regularization_losses
]trainable_variables
^	variables
_	keras_api
h

`kernel
abias
bregularization_losses
ctrainable_variables
d	variables
e	keras_api
R
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
h

jkernel
kbias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
h

pkernel
qbias
rregularization_losses
strainable_variables
t	variables
u	keras_api
h

vkernel
wbias
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
R
|regularization_losses
}trainable_variables
~	variables
	keras_api
V
ђregularization_losses
Ђtrainable_variables
ѓ	variables
Ѓ	keras_api
V
ёregularization_losses
Ёtrainable_variables
є	variables
Є	keras_api
n
ѕkernel
	Ѕbias
іregularization_losses
Іtrainable_variables
ї	variables
Ї	keras_api
V
јregularization_losses
Јtrainable_variables
љ	variables
Љ	keras_api
Ў
	њiter
Њbeta_1
ћbeta_2

Ћdecay
ќlearning_ratevmЋwmќ	ѕmЌ	ЅmўvvЎwvџ	ѕvЏ	Ѕvю
 

v0
w1
ѕ2
Ѕ3
п
0
1
$2
%3
.4
/5
46
57
>8
?9
D10
E11
J12
K13
T14
U15
Z16
[17
`18
a19
j20
k21
p22
q23
v24
w25
ѕ26
Ѕ27
▓
regularization_losses
Ќlayers
 ўlayer_regularization_losses
Ўlayer_metrics
trainable_variables
	variables
џmetrics
Џnon_trainable_variables
 
_]
VARIABLE_VALUEblock1_conv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock1_conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
▓
 regularization_losses
юlayers
 Юlayer_regularization_losses
ъlayer_metrics
!trainable_variables
"	variables
Ъmetrics
аnon_trainable_variables
_]
VARIABLE_VALUEblock1_conv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock1_conv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

$0
%1
▓
&regularization_losses
Аlayers
 бlayer_regularization_losses
Бlayer_metrics
'trainable_variables
(	variables
цmetrics
Цnon_trainable_variables
 
 
 
▓
*regularization_losses
дlayers
 Дlayer_regularization_losses
еlayer_metrics
+trainable_variables
,	variables
Еmetrics
фnon_trainable_variables
_]
VARIABLE_VALUEblock2_conv1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock2_conv1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

.0
/1
▓
0regularization_losses
Фlayers
 гlayer_regularization_losses
Гlayer_metrics
1trainable_variables
2	variables
«metrics
»non_trainable_variables
_]
VARIABLE_VALUEblock2_conv2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock2_conv2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

40
51
▓
6regularization_losses
░layers
 ▒layer_regularization_losses
▓layer_metrics
7trainable_variables
8	variables
│metrics
┤non_trainable_variables
 
 
 
▓
:regularization_losses
хlayers
 Хlayer_regularization_losses
иlayer_metrics
;trainable_variables
<	variables
Иmetrics
╣non_trainable_variables
_]
VARIABLE_VALUEblock3_conv1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

>0
?1
▓
@regularization_losses
║layers
 ╗layer_regularization_losses
╝layer_metrics
Atrainable_variables
B	variables
йmetrics
Йnon_trainable_variables
_]
VARIABLE_VALUEblock3_conv2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

D0
E1
▓
Fregularization_losses
┐layers
 └layer_regularization_losses
┴layer_metrics
Gtrainable_variables
H	variables
┬metrics
├non_trainable_variables
_]
VARIABLE_VALUEblock3_conv3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock3_conv3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

J0
K1
▓
Lregularization_losses
─layers
 ┼layer_regularization_losses
кlayer_metrics
Mtrainable_variables
N	variables
Кmetrics
╚non_trainable_variables
 
 
 
▓
Pregularization_losses
╔layers
 ╩layer_regularization_losses
╦layer_metrics
Qtrainable_variables
R	variables
╠metrics
═non_trainable_variables
_]
VARIABLE_VALUEblock4_conv1/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv1/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

T0
U1
▓
Vregularization_losses
╬layers
 ¤layer_regularization_losses
лlayer_metrics
Wtrainable_variables
X	variables
Лmetrics
мnon_trainable_variables
_]
VARIABLE_VALUEblock4_conv2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

Z0
[1
▓
\regularization_losses
Мlayers
 нlayer_regularization_losses
Нlayer_metrics
]trainable_variables
^	variables
оmetrics
Оnon_trainable_variables
_]
VARIABLE_VALUEblock4_conv3/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEblock4_conv3/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

`0
a1
▓
bregularization_losses
пlayers
 ┘layer_regularization_losses
┌layer_metrics
ctrainable_variables
d	variables
█metrics
▄non_trainable_variables
 
 
 
▓
fregularization_losses
Пlayers
 яlayer_regularization_losses
▀layer_metrics
gtrainable_variables
h	variables
Яmetrics
рnon_trainable_variables
`^
VARIABLE_VALUEblock5_conv1/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv1/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

j0
k1
▓
lregularization_losses
Рlayers
 сlayer_regularization_losses
Сlayer_metrics
mtrainable_variables
n	variables
тmetrics
Тnon_trainable_variables
`^
VARIABLE_VALUEblock5_conv2/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv2/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

p0
q1
▓
rregularization_losses
уlayers
 Уlayer_regularization_losses
жlayer_metrics
strainable_variables
t	variables
Жmetrics
вnon_trainable_variables
`^
VARIABLE_VALUEblock5_conv3/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEblock5_conv3/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

v0
w1

v0
w1
▓
xregularization_losses
Вlayers
 ьlayer_regularization_losses
Ьlayer_metrics
ytrainable_variables
z	variables
№metrics
­non_trainable_variables
 
 
 
▓
|regularization_losses
ыlayers
 Ыlayer_regularization_losses
зlayer_metrics
}trainable_variables
~	variables
Зmetrics
шnon_trainable_variables
 
 
 
х
ђregularization_losses
Шlayers
 эlayer_regularization_losses
Эlayer_metrics
Ђtrainable_variables
ѓ	variables
щmetrics
Щnon_trainable_variables
 
 
 
х
ёregularization_losses
чlayers
 Чlayer_regularization_losses
§layer_metrics
Ёtrainable_variables
є	variables
■metrics
 non_trainable_variables
[Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_1/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE
 

ѕ0
Ѕ1

ѕ0
Ѕ1
х
іregularization_losses
ђlayers
 Ђlayer_regularization_losses
ѓlayer_metrics
Іtrainable_variables
ї	variables
Ѓmetrics
ёnon_trainable_variables
 
 
 
х
јregularization_losses
Ёlayers
 єlayer_regularization_losses
Єlayer_metrics
Јtrainable_variables
љ	variables
ѕmetrics
Ѕnon_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
«
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
 
 

і0
І1
Х
0
1
$2
%3
.4
/5
46
57
>8
?9
D10
E11
J12
K13
T14
U15
Z16
[17
`18
a19
j20
k21
p22
q23
 
 
 
 

0
1
 
 
 
 

$0
%1
 
 
 
 
 
 
 
 
 

.0
/1
 
 
 
 

40
51
 
 
 
 
 
 
 
 
 

>0
?1
 
 
 
 

D0
E1
 
 
 
 

J0
K1
 
 
 
 
 
 
 
 
 

T0
U1
 
 
 
 

Z0
[1
 
 
 
 

`0
a1
 
 
 
 
 
 
 
 
 

j0
k1
 
 
 
 

p0
q1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

їtotal

Їcount
ј	variables
Ј	keras_api
I

љtotal

Љcount
њ
_fn_kwargs
Њ	variables
ћ	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ї0
Ї1

ј	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

љ0
Љ1

Њ	variables
ёЂ
VARIABLE_VALUEAdam/block5_conv3/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/block5_conv3/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ёЂ
VARIABLE_VALUEAdam/block5_conv3/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/block5_conv3/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ј
serving_default_input_2Placeholder*1
_output_shapes
:         ЯЯ*
dtype0*&
shape:         ЯЯ
Љ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2block1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_1/kerneldense_1/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference_signature_wrapper_5471
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ю
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp.Adam/block5_conv3/kernel/m/Read/ReadVariableOp,Adam/block5_conv3/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp.Adam/block5_conv3/kernel/v/Read/ReadVariableOp,Adam/block5_conv3/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *&
f!R
__inference__traced_save_6294
Њ	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/block5_conv3/kernel/mAdam/block5_conv3/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/block5_conv3/kernel/vAdam/block5_conv3/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *)
f$R"
 __inference__traced_restore_6439├І
Б
a
(__inference_dropout_1_layer_call_fn_6102

inputs
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_49732
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*'
_input_shapes
:         ђ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
њ	
┌
A__inference_dense_1_layer_call_and_return_conditional_losses_6117

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddЋ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ѕ
ђ
+__inference_block3_conv2_layer_call_fn_5940

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_47522
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         88ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         88ђ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         88ђ
 
_user_specified_nameinputs
ц
F
*__inference_block3_pool_layer_call_fn_4563

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_45572
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ѕ
ђ
+__inference_block5_conv1_layer_call_fn_6040

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_48892
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
њ	
┌
A__inference_dense_1_layer_call_and_return_conditional_losses_5001

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddЋ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
█
{
&__inference_dense_1_layer_call_fn_6126

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_50012
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*/
_input_shapes
:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
░
Ј
"__inference_signature_wrapper_5471
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityѕбStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *(
f#R!
__inference__wrapped_model_45272
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ЯЯ
!
_user_specified_name	input_2
ч
a
E__inference_block4_pool_layer_call_and_return_conditional_losses_4569

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
о

▀
F__inference_block2_conv1_layer_call_and_return_conditional_losses_5871

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpќ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ppђ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         pp@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
┘

▀
F__inference_block5_conv1_layer_call_and_return_conditional_losses_6031

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
¤e
Ч	
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5341

inputs
block1_conv1_5262
block1_conv1_5264
block1_conv2_5267
block1_conv2_5269
block2_conv1_5273
block2_conv1_5275
block2_conv2_5278
block2_conv2_5280
block3_conv1_5284
block3_conv1_5286
block3_conv2_5289
block3_conv2_5291
block3_conv3_5294
block3_conv3_5296
block4_conv1_5300
block4_conv1_5302
block4_conv2_5305
block4_conv2_5307
block4_conv3_5310
block4_conv3_5312
block5_conv1_5316
block5_conv1_5318
block5_conv2_5321
block5_conv2_5323
block5_conv3_5326
block5_conv3_5328
dense_1_5334
dense_1_5336
identityѕб$block1_conv1/StatefulPartitionedCallб$block1_conv2/StatefulPartitionedCallб$block2_conv1/StatefulPartitionedCallб$block2_conv2/StatefulPartitionedCallб$block3_conv1/StatefulPartitionedCallб$block3_conv2/StatefulPartitionedCallб$block3_conv3/StatefulPartitionedCallб$block4_conv1/StatefulPartitionedCallб$block4_conv2/StatefulPartitionedCallб$block4_conv3/StatefulPartitionedCallб$block5_conv1/StatefulPartitionedCallб$block5_conv2/StatefulPartitionedCallб$block5_conv3/StatefulPartitionedCallбdense_1/StatefulPartitionedCall»
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_5262block1_conv1_5264*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_46152&
$block1_conv1/StatefulPartitionedCallо
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_5267block1_conv2_5269*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_46422&
$block1_conv2/StatefulPartitionedCallЇ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_45332
block1_pool/PartitionedCall╠
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_5273block2_conv1_5275*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_46702&
$block2_conv1/StatefulPartitionedCallН
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_5278block2_conv2_5280*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_46972&
$block2_conv2/StatefulPartitionedCallј
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_45452
block2_pool/PartitionedCall╠
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_5284block3_conv1_5286*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_47252&
$block3_conv1/StatefulPartitionedCallН
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_5289block3_conv2_5291*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_47522&
$block3_conv2/StatefulPartitionedCallН
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_5294block3_conv3_5296*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_47792&
$block3_conv3/StatefulPartitionedCallј
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_45572
block3_pool/PartitionedCall╠
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_5300block4_conv1_5302*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_48072&
$block4_conv1/StatefulPartitionedCallН
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_5305block4_conv2_5307*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_48342&
$block4_conv2/StatefulPartitionedCallН
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_5310block4_conv3_5312*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_48612&
$block4_conv3/StatefulPartitionedCallј
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_45692
block4_pool/PartitionedCall╠
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_5316block5_conv1_5318*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_48892&
$block5_conv1/StatefulPartitionedCallН
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_5321block5_conv2_5323*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_49162&
$block5_conv2/StatefulPartitionedCallН
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_5326block5_conv3_5328*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_49432&
$block5_conv3/StatefulPartitionedCallј
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_45812
block5_pool/PartitionedCallф
*global_average_pooling2d_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_45942,
*global_average_pooling2d_1/PartitionedCallє
dropout_1/PartitionedCallPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_49782
dropout_1/PartitionedCallе
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_5334dense_1_5336*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_50012!
dense_1/StatefulPartitionedCallЩ
softmax_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_softmax_1_layer_call_and_return_conditional_losses_50222
softmax_1/PartitionedCallЊ
IdentityIdentity"softmax_1/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
┘

▀
F__inference_block3_conv2_layer_call_and_return_conditional_losses_4752

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         88ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         88ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88ђ
 
_user_specified_nameinputs
г[
г
__inference__traced_save_6294
file_prefix2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop9
5savev2_adam_block5_conv3_kernel_m_read_readvariableop7
3savev2_adam_block5_conv3_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop9
5savev2_adam_block5_conv3_kernel_v_read_readvariableop7
3savev2_adam_block5_conv3_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameі
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ю
valueњBЈ.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesС
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesш
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop5savev2_adam_block5_conv3_kernel_m_read_readvariableop3savev2_adam_block5_conv3_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop5savev2_adam_block5_conv3_kernel_v_read_readvariableop3savev2_adam_block5_conv3_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*В
_input_shapes┌
О: :@:@:@@:@:@ђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:ђђ:ђ:	ђ:: : : : : : : : : :ђђ:ђ:	ђ::ђђ:ђ:	ђ:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@ђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.	*
(
_output_shapes
:ђђ:!


_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:%!

_output_shapes
:	ђ: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :.&*
(
_output_shapes
:ђђ:!'

_output_shapes	
:ђ:%(!

_output_shapes
:	ђ: )

_output_shapes
::.**
(
_output_shapes
:ђђ:!+

_output_shapes	
:ђ:%,!

_output_shapes
:	ђ: -

_output_shapes
::.

_output_shapes
: 
ха
Н
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5698

inputs/
+block1_conv1_conv2d_readvariableop_resource0
,block1_conv1_biasadd_readvariableop_resource/
+block1_conv2_conv2d_readvariableop_resource0
,block1_conv2_biasadd_readvariableop_resource/
+block2_conv1_conv2d_readvariableop_resource0
,block2_conv1_biasadd_readvariableop_resource/
+block2_conv2_conv2d_readvariableop_resource0
,block2_conv2_biasadd_readvariableop_resource/
+block3_conv1_conv2d_readvariableop_resource0
,block3_conv1_biasadd_readvariableop_resource/
+block3_conv2_conv2d_readvariableop_resource0
,block3_conv2_biasadd_readvariableop_resource/
+block3_conv3_conv2d_readvariableop_resource0
,block3_conv3_biasadd_readvariableop_resource/
+block4_conv1_conv2d_readvariableop_resource0
,block4_conv1_biasadd_readvariableop_resource/
+block4_conv2_conv2d_readvariableop_resource0
,block4_conv2_biasadd_readvariableop_resource/
+block4_conv3_conv2d_readvariableop_resource0
,block4_conv3_biasadd_readvariableop_resource/
+block5_conv1_conv2d_readvariableop_resource0
,block5_conv1_biasadd_readvariableop_resource/
+block5_conv2_conv2d_readvariableop_resource0
,block5_conv2_biasadd_readvariableop_resource/
+block5_conv3_conv2d_readvariableop_resource0
,block5_conv3_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityѕб#block1_conv1/BiasAdd/ReadVariableOpб"block1_conv1/Conv2D/ReadVariableOpб#block1_conv2/BiasAdd/ReadVariableOpб"block1_conv2/Conv2D/ReadVariableOpб#block2_conv1/BiasAdd/ReadVariableOpб"block2_conv1/Conv2D/ReadVariableOpб#block2_conv2/BiasAdd/ReadVariableOpб"block2_conv2/Conv2D/ReadVariableOpб#block3_conv1/BiasAdd/ReadVariableOpб"block3_conv1/Conv2D/ReadVariableOpб#block3_conv2/BiasAdd/ReadVariableOpб"block3_conv2/Conv2D/ReadVariableOpб#block3_conv3/BiasAdd/ReadVariableOpб"block3_conv3/Conv2D/ReadVariableOpб#block4_conv1/BiasAdd/ReadVariableOpб"block4_conv1/Conv2D/ReadVariableOpб#block4_conv2/BiasAdd/ReadVariableOpб"block4_conv2/Conv2D/ReadVariableOpб#block4_conv3/BiasAdd/ReadVariableOpб"block4_conv3/Conv2D/ReadVariableOpб#block5_conv1/BiasAdd/ReadVariableOpб"block5_conv1/Conv2D/ReadVariableOpб#block5_conv2/BiasAdd/ReadVariableOpб"block5_conv2/Conv2D/ReadVariableOpб#block5_conv3/BiasAdd/ReadVariableOpб"block5_conv3/Conv2D/ReadVariableOpбdense_1/BiasAdd/ReadVariableOpбdense_1/MatMul/ReadVariableOp╝
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp╠
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@*
paddingSAME*
strides
2
block1_conv1/Conv2D│
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOpЙ
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@2
block1_conv1/BiasAddЅ
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         ЯЯ@2
block1_conv1/Relu╝
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpт
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@*
paddingSAME*
strides
2
block1_conv2/Conv2D│
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOpЙ
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@2
block1_conv2/BiasAddЅ
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         ЯЯ@2
block1_conv2/Relu├
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPoolй
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpр
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ*
paddingSAME*
strides
2
block2_conv1/Conv2D┤
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOpй
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ2
block2_conv1/BiasAddѕ
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppђ2
block2_conv1/ReluЙ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpС
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ*
paddingSAME*
strides
2
block2_conv2/Conv2D┤
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOpй
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ2
block2_conv2/BiasAddѕ
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppђ2
block2_conv2/Relu─
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         88ђ*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPoolЙ
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpр
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
block3_conv1/Conv2D┤
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOpй
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2
block3_conv1/BiasAddѕ
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
block3_conv1/ReluЙ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpС
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
block3_conv2/Conv2D┤
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOpй
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2
block3_conv2/BiasAddѕ
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
block3_conv2/ReluЙ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpС
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
block3_conv3/Conv2D┤
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOpй
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2
block3_conv3/BiasAddѕ
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
block3_conv3/Relu─
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPoolЙ
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpр
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv1/Conv2D┤
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOpй
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv1/BiasAddѕ
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv1/ReluЙ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpС
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv2/Conv2D┤
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOpй
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv2/BiasAddѕ
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv2/ReluЙ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpС
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv3/Conv2D┤
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOpй
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv3/BiasAddѕ
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv3/Relu─
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPoolЙ
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpр
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv1/Conv2D┤
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOpй
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv1/BiasAddѕ
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv1/ReluЙ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpС
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv2/Conv2D┤
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOpй
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv2/BiasAddѕ
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv2/ReluЙ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpС
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv3/Conv2D┤
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOpй
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv3/BiasAddѕ
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv3/Relu─
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPoolи
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_1/Mean/reduction_indicesО
global_average_pooling2d_1/MeanMeanblock5_pool/MaxPool:output:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:         ђ2!
global_average_pooling2d_1/MeanЉ
dropout_1/IdentityIdentity(global_average_pooling2d_1/Mean:output:0*
T0*(
_output_shapes
:         ђ2
dropout_1/Identityд
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
dense_1/MatMul/ReadVariableOpа
dense_1/MatMulMatMuldropout_1/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulц
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpА
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAdd}
softmax_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
softmax_1/Softmax 
IdentityIdentitysoftmax_1/Softmax:softmax:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ѕ
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_4973

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeх
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ2
dropout/GreaterEqualђ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ђ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         ђ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
┘

▀
F__inference_block4_conv1_layer_call_and_return_conditional_losses_5971

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
┘

▀
F__inference_block5_conv1_layer_call_and_return_conditional_losses_4889

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ѕ
ђ
+__inference_block5_conv2_layer_call_fn_6060

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_49162
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ї
U
9__inference_global_average_pooling2d_1_layer_call_fn_4600

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:                  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_45942
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:                  2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ч
a
E__inference_block5_pool_layer_call_and_return_conditional_losses_4581

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ч
a
E__inference_block3_pool_layer_call_and_return_conditional_losses_4557

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┘

▀
F__inference_block3_conv2_layer_call_and_return_conditional_losses_5931

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         88ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         88ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88ђ
 
_user_specified_nameinputs
┘

▀
F__inference_block4_conv3_layer_call_and_return_conditional_losses_4861

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ѕ
ђ
+__inference_block4_conv3_layer_call_fn_6020

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_48612
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
 f
а

F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5198

inputs
block1_conv1_5119
block1_conv1_5121
block1_conv2_5124
block1_conv2_5126
block2_conv1_5130
block2_conv1_5132
block2_conv2_5135
block2_conv2_5137
block3_conv1_5141
block3_conv1_5143
block3_conv2_5146
block3_conv2_5148
block3_conv3_5151
block3_conv3_5153
block4_conv1_5157
block4_conv1_5159
block4_conv2_5162
block4_conv2_5164
block4_conv3_5167
block4_conv3_5169
block5_conv1_5173
block5_conv1_5175
block5_conv2_5178
block5_conv2_5180
block5_conv3_5183
block5_conv3_5185
dense_1_5191
dense_1_5193
identityѕб$block1_conv1/StatefulPartitionedCallб$block1_conv2/StatefulPartitionedCallб$block2_conv1/StatefulPartitionedCallб$block2_conv2/StatefulPartitionedCallб$block3_conv1/StatefulPartitionedCallб$block3_conv2/StatefulPartitionedCallб$block3_conv3/StatefulPartitionedCallб$block4_conv1/StatefulPartitionedCallб$block4_conv2/StatefulPartitionedCallб$block4_conv3/StatefulPartitionedCallб$block5_conv1/StatefulPartitionedCallб$block5_conv2/StatefulPartitionedCallб$block5_conv3/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCall»
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_5119block1_conv1_5121*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_46152&
$block1_conv1/StatefulPartitionedCallо
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_5124block1_conv2_5126*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_46422&
$block1_conv2/StatefulPartitionedCallЇ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_45332
block1_pool/PartitionedCall╠
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_5130block2_conv1_5132*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_46702&
$block2_conv1/StatefulPartitionedCallН
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_5135block2_conv2_5137*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_46972&
$block2_conv2/StatefulPartitionedCallј
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_45452
block2_pool/PartitionedCall╠
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_5141block3_conv1_5143*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_47252&
$block3_conv1/StatefulPartitionedCallН
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_5146block3_conv2_5148*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_47522&
$block3_conv2/StatefulPartitionedCallН
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_5151block3_conv3_5153*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_47792&
$block3_conv3/StatefulPartitionedCallј
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_45572
block3_pool/PartitionedCall╠
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_5157block4_conv1_5159*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_48072&
$block4_conv1/StatefulPartitionedCallН
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_5162block4_conv2_5164*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_48342&
$block4_conv2/StatefulPartitionedCallН
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_5167block4_conv3_5169*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_48612&
$block4_conv3/StatefulPartitionedCallј
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_45692
block4_pool/PartitionedCall╠
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_5173block5_conv1_5175*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_48892&
$block5_conv1/StatefulPartitionedCallН
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_5178block5_conv2_5180*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_49162&
$block5_conv2/StatefulPartitionedCallН
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_5183block5_conv3_5185*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_49432&
$block5_conv3/StatefulPartitionedCallј
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_45812
block5_pool/PartitionedCallф
*global_average_pooling2d_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_45942,
*global_average_pooling2d_1/PartitionedCallъ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_49732#
!dropout_1/StatefulPartitionedCall░
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_5191dense_1_5193*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_50012!
dense_1/StatefulPartitionedCallЩ
softmax_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_softmax_1_layer_call_and_return_conditional_losses_50222
softmax_1/PartitionedCallи
IdentityIdentity"softmax_1/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ѕ
ђ
+__inference_block5_conv3_layer_call_fn_6080

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_49432
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ц
F
*__inference_block5_pool_layer_call_fn_4587

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_45812
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▄

▀
F__inference_block1_conv1_layer_call_and_return_conditional_losses_4615

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ЯЯ@2
ReluА
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ЯЯ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЯЯ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
▄

▀
F__inference_block1_conv2_layer_call_and_return_conditional_losses_5851

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ЯЯ@2
ReluА
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ЯЯ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЯЯ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ЯЯ@
 
_user_specified_nameinputs
┘

▀
F__inference_block5_conv3_layer_call_and_return_conditional_losses_4943

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ц
F
*__inference_block1_pool_layer_call_fn_4539

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_45332
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┘

▀
F__inference_block3_conv1_layer_call_and_return_conditional_losses_5911

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         88ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         88ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88ђ
 
_user_specified_nameinputs
Я
ў
+__inference_AkinolaVGG16_layer_call_fn_5257
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_51982
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ЯЯ
!
_user_specified_name	input_2
ѕ
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_6092

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeх
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ2
dropout/GreaterEqualђ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ђ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         ђ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ѕ
ђ
+__inference_block2_conv2_layer_call_fn_5900

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_46972
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ppђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ppђ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ppђ
 
_user_specified_nameinputs
┘

▀
F__inference_block4_conv3_layer_call_and_return_conditional_losses_6011

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ѕ
ђ
+__inference_block4_conv1_layer_call_fn_5980

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_48072
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ќ
D
(__inference_dropout_1_layer_call_fn_6107

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_49782
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
╣
_
C__inference_softmax_1_layer_call_and_return_conditional_losses_6131

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:         2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ї
ђ
+__inference_block1_conv2_layer_call_fn_5860

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_46422
StatefulPartitionedCallў
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ЯЯ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЯЯ@::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ@
 
_user_specified_nameinputs
ц
F
*__inference_block2_pool_layer_call_fn_4551

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_45452
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ї
ђ
+__inference_block1_conv1_layer_call_fn_5840

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_46152
StatefulPartitionedCallў
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ЯЯ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЯЯ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
є
ђ
+__inference_block2_conv1_layer_call_fn_5880

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_46702
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ppђ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         pp@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
ѕ
ђ
+__inference_block3_conv1_layer_call_fn_5920

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_47252
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         88ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         88ђ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         88ђ
 
_user_specified_nameinputs
ыЕ
Н
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5588

inputs/
+block1_conv1_conv2d_readvariableop_resource0
,block1_conv1_biasadd_readvariableop_resource/
+block1_conv2_conv2d_readvariableop_resource0
,block1_conv2_biasadd_readvariableop_resource/
+block2_conv1_conv2d_readvariableop_resource0
,block2_conv1_biasadd_readvariableop_resource/
+block2_conv2_conv2d_readvariableop_resource0
,block2_conv2_biasadd_readvariableop_resource/
+block3_conv1_conv2d_readvariableop_resource0
,block3_conv1_biasadd_readvariableop_resource/
+block3_conv2_conv2d_readvariableop_resource0
,block3_conv2_biasadd_readvariableop_resource/
+block3_conv3_conv2d_readvariableop_resource0
,block3_conv3_biasadd_readvariableop_resource/
+block4_conv1_conv2d_readvariableop_resource0
,block4_conv1_biasadd_readvariableop_resource/
+block4_conv2_conv2d_readvariableop_resource0
,block4_conv2_biasadd_readvariableop_resource/
+block4_conv3_conv2d_readvariableop_resource0
,block4_conv3_biasadd_readvariableop_resource/
+block5_conv1_conv2d_readvariableop_resource0
,block5_conv1_biasadd_readvariableop_resource/
+block5_conv2_conv2d_readvariableop_resource0
,block5_conv2_biasadd_readvariableop_resource/
+block5_conv3_conv2d_readvariableop_resource0
,block5_conv3_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityѕб#block1_conv1/BiasAdd/ReadVariableOpб"block1_conv1/Conv2D/ReadVariableOpб#block1_conv2/BiasAdd/ReadVariableOpб"block1_conv2/Conv2D/ReadVariableOpб#block2_conv1/BiasAdd/ReadVariableOpб"block2_conv1/Conv2D/ReadVariableOpб#block2_conv2/BiasAdd/ReadVariableOpб"block2_conv2/Conv2D/ReadVariableOpб#block3_conv1/BiasAdd/ReadVariableOpб"block3_conv1/Conv2D/ReadVariableOpб#block3_conv2/BiasAdd/ReadVariableOpб"block3_conv2/Conv2D/ReadVariableOpб#block3_conv3/BiasAdd/ReadVariableOpб"block3_conv3/Conv2D/ReadVariableOpб#block4_conv1/BiasAdd/ReadVariableOpб"block4_conv1/Conv2D/ReadVariableOpб#block4_conv2/BiasAdd/ReadVariableOpб"block4_conv2/Conv2D/ReadVariableOpб#block4_conv3/BiasAdd/ReadVariableOpб"block4_conv3/Conv2D/ReadVariableOpб#block5_conv1/BiasAdd/ReadVariableOpб"block5_conv1/Conv2D/ReadVariableOpб#block5_conv2/BiasAdd/ReadVariableOpб"block5_conv2/Conv2D/ReadVariableOpб#block5_conv3/BiasAdd/ReadVariableOpб"block5_conv3/Conv2D/ReadVariableOpбdense_1/BiasAdd/ReadVariableOpбdense_1/MatMul/ReadVariableOp╝
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp╠
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@*
paddingSAME*
strides
2
block1_conv1/Conv2D│
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOpЙ
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@2
block1_conv1/BiasAddЅ
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         ЯЯ@2
block1_conv1/Relu╝
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpт
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@*
paddingSAME*
strides
2
block1_conv2/Conv2D│
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOpЙ
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@2
block1_conv2/BiasAddЅ
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         ЯЯ@2
block1_conv2/Relu├
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPoolй
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpр
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ*
paddingSAME*
strides
2
block2_conv1/Conv2D┤
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOpй
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ2
block2_conv1/BiasAddѕ
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppђ2
block2_conv1/ReluЙ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpС
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ*
paddingSAME*
strides
2
block2_conv2/Conv2D┤
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOpй
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ2
block2_conv2/BiasAddѕ
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppђ2
block2_conv2/Relu─
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:         88ђ*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPoolЙ
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpр
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
block3_conv1/Conv2D┤
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOpй
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2
block3_conv1/BiasAddѕ
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
block3_conv1/ReluЙ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpС
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
block3_conv2/Conv2D┤
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOpй
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2
block3_conv2/BiasAddѕ
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
block3_conv2/ReluЙ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpС
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
block3_conv3/Conv2D┤
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOpй
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2
block3_conv3/BiasAddѕ
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
block3_conv3/Relu─
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPoolЙ
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpр
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv1/Conv2D┤
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOpй
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv1/BiasAddѕ
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv1/ReluЙ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpС
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv2/Conv2D┤
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOpй
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv2/BiasAddѕ
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv2/ReluЙ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpС
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block4_conv3/Conv2D┤
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOpй
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block4_conv3/BiasAddѕ
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block4_conv3/Relu─
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPoolЙ
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpр
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv1/Conv2D┤
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOpй
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv1/BiasAddѕ
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv1/ReluЙ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpС
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv2/Conv2D┤
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOpй
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv2/BiasAddѕ
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv2/ReluЙ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpС
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
block5_conv3/Conv2D┤
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOpй
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
block5_conv3/BiasAddѕ
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
block5_conv3/Relu─
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPoolи
1global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      23
1global_average_pooling2d_1/Mean/reduction_indicesО
global_average_pooling2d_1/MeanMeanblock5_pool/MaxPool:output:0:global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:         ђ2!
global_average_pooling2d_1/Meanw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?2
dropout_1/dropout/Const┤
dropout_1/dropout/MulMul(global_average_pooling2d_1/Mean:output:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:         ђ2
dropout_1/dropout/Mulі
dropout_1/dropout/ShapeShape(global_average_pooling2d_1/Mean:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/ShapeМ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype020
.dropout_1/dropout/random_uniform/RandomUniformЅ
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2"
 dropout_1/dropout/GreaterEqual/yу
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ2 
dropout_1/dropout/GreaterEqualъ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         ђ2
dropout_1/dropout/CastБ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:         ђ2
dropout_1/dropout/Mul_1д
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
dense_1/MatMul/ReadVariableOpа
dense_1/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/MatMulц
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOpА
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_1/BiasAdd}
softmax_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2
softmax_1/Softmax 
IdentityIdentitysoftmax_1/Softmax:softmax:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
┘

▀
F__inference_block4_conv1_layer_call_and_return_conditional_losses_4807

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ч
a
E__inference_block2_pool_layer_call_and_return_conditional_losses_4545

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
мe
§	
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5113
input_2
block1_conv1_5034
block1_conv1_5036
block1_conv2_5039
block1_conv2_5041
block2_conv1_5045
block2_conv1_5047
block2_conv2_5050
block2_conv2_5052
block3_conv1_5056
block3_conv1_5058
block3_conv2_5061
block3_conv2_5063
block3_conv3_5066
block3_conv3_5068
block4_conv1_5072
block4_conv1_5074
block4_conv2_5077
block4_conv2_5079
block4_conv3_5082
block4_conv3_5084
block5_conv1_5088
block5_conv1_5090
block5_conv2_5093
block5_conv2_5095
block5_conv3_5098
block5_conv3_5100
dense_1_5106
dense_1_5108
identityѕб$block1_conv1/StatefulPartitionedCallб$block1_conv2/StatefulPartitionedCallб$block2_conv1/StatefulPartitionedCallб$block2_conv2/StatefulPartitionedCallб$block3_conv1/StatefulPartitionedCallб$block3_conv2/StatefulPartitionedCallб$block3_conv3/StatefulPartitionedCallб$block4_conv1/StatefulPartitionedCallб$block4_conv2/StatefulPartitionedCallб$block4_conv3/StatefulPartitionedCallб$block5_conv1/StatefulPartitionedCallб$block5_conv2/StatefulPartitionedCallб$block5_conv3/StatefulPartitionedCallбdense_1/StatefulPartitionedCall░
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_2block1_conv1_5034block1_conv1_5036*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_46152&
$block1_conv1/StatefulPartitionedCallо
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_5039block1_conv2_5041*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_46422&
$block1_conv2/StatefulPartitionedCallЇ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_45332
block1_pool/PartitionedCall╠
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_5045block2_conv1_5047*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_46702&
$block2_conv1/StatefulPartitionedCallН
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_5050block2_conv2_5052*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_46972&
$block2_conv2/StatefulPartitionedCallј
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_45452
block2_pool/PartitionedCall╠
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_5056block3_conv1_5058*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_47252&
$block3_conv1/StatefulPartitionedCallН
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_5061block3_conv2_5063*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_47522&
$block3_conv2/StatefulPartitionedCallН
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_5066block3_conv3_5068*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_47792&
$block3_conv3/StatefulPartitionedCallј
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_45572
block3_pool/PartitionedCall╠
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_5072block4_conv1_5074*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_48072&
$block4_conv1/StatefulPartitionedCallН
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_5077block4_conv2_5079*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_48342&
$block4_conv2/StatefulPartitionedCallН
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_5082block4_conv3_5084*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_48612&
$block4_conv3/StatefulPartitionedCallј
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_45692
block4_pool/PartitionedCall╠
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_5088block5_conv1_5090*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_48892&
$block5_conv1/StatefulPartitionedCallН
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_5093block5_conv2_5095*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_49162&
$block5_conv2/StatefulPartitionedCallН
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_5098block5_conv3_5100*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_49432&
$block5_conv3/StatefulPartitionedCallј
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_45812
block5_pool/PartitionedCallф
*global_average_pooling2d_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_45942,
*global_average_pooling2d_1/PartitionedCallє
dropout_1/PartitionedCallPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_49782
dropout_1/PartitionedCallе
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_5106dense_1_5108*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_50012!
dense_1/StatefulPartitionedCallЩ
softmax_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_softmax_1_layer_call_and_return_conditional_losses_50222
softmax_1/PartitionedCallЊ
IdentityIdentity"softmax_1/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Z V
1
_output_shapes
:         ЯЯ
!
_user_specified_name	input_2
║
p
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_4594

inputs
identityЂ
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:                  2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:                  2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
П
Ќ
+__inference_AkinolaVGG16_layer_call_fn_5759

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_51982
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
┘

▀
F__inference_block3_conv3_layer_call_and_return_conditional_losses_5951

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         88ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         88ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88ђ
 
_user_specified_nameinputs
ч
a
E__inference_block1_pool_layer_call_and_return_conditional_losses_4533

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▄

▀
F__inference_block1_conv1_layer_call_and_return_conditional_losses_5831

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ЯЯ@2
ReluА
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ЯЯ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЯЯ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
╣
_
C__inference_softmax_1_layer_call_and_return_conditional_losses_5022

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:         2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ѕ
ђ
+__inference_block4_conv2_layer_call_fn_6000

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_48342
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Њ
D
(__inference_softmax_1_layer_call_fn_6136

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_softmax_1_layer_call_and_return_conditional_losses_50222
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╩
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_6097

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
о

▀
F__inference_block2_conv1_layer_call_and_return_conditional_losses_4670

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpќ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ppђ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         pp@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         pp@
 
_user_specified_nameinputs
╩
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_4978

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ч╚
Є
__inference__wrapped_model_4527
input_2<
8akinolavgg16_block1_conv1_conv2d_readvariableop_resource=
9akinolavgg16_block1_conv1_biasadd_readvariableop_resource<
8akinolavgg16_block1_conv2_conv2d_readvariableop_resource=
9akinolavgg16_block1_conv2_biasadd_readvariableop_resource<
8akinolavgg16_block2_conv1_conv2d_readvariableop_resource=
9akinolavgg16_block2_conv1_biasadd_readvariableop_resource<
8akinolavgg16_block2_conv2_conv2d_readvariableop_resource=
9akinolavgg16_block2_conv2_biasadd_readvariableop_resource<
8akinolavgg16_block3_conv1_conv2d_readvariableop_resource=
9akinolavgg16_block3_conv1_biasadd_readvariableop_resource<
8akinolavgg16_block3_conv2_conv2d_readvariableop_resource=
9akinolavgg16_block3_conv2_biasadd_readvariableop_resource<
8akinolavgg16_block3_conv3_conv2d_readvariableop_resource=
9akinolavgg16_block3_conv3_biasadd_readvariableop_resource<
8akinolavgg16_block4_conv1_conv2d_readvariableop_resource=
9akinolavgg16_block4_conv1_biasadd_readvariableop_resource<
8akinolavgg16_block4_conv2_conv2d_readvariableop_resource=
9akinolavgg16_block4_conv2_biasadd_readvariableop_resource<
8akinolavgg16_block4_conv3_conv2d_readvariableop_resource=
9akinolavgg16_block4_conv3_biasadd_readvariableop_resource<
8akinolavgg16_block5_conv1_conv2d_readvariableop_resource=
9akinolavgg16_block5_conv1_biasadd_readvariableop_resource<
8akinolavgg16_block5_conv2_conv2d_readvariableop_resource=
9akinolavgg16_block5_conv2_biasadd_readvariableop_resource<
8akinolavgg16_block5_conv3_conv2d_readvariableop_resource=
9akinolavgg16_block5_conv3_biasadd_readvariableop_resource7
3akinolavgg16_dense_1_matmul_readvariableop_resource8
4akinolavgg16_dense_1_biasadd_readvariableop_resource
identityѕб0AkinolaVGG16/block1_conv1/BiasAdd/ReadVariableOpб/AkinolaVGG16/block1_conv1/Conv2D/ReadVariableOpб0AkinolaVGG16/block1_conv2/BiasAdd/ReadVariableOpб/AkinolaVGG16/block1_conv2/Conv2D/ReadVariableOpб0AkinolaVGG16/block2_conv1/BiasAdd/ReadVariableOpб/AkinolaVGG16/block2_conv1/Conv2D/ReadVariableOpб0AkinolaVGG16/block2_conv2/BiasAdd/ReadVariableOpб/AkinolaVGG16/block2_conv2/Conv2D/ReadVariableOpб0AkinolaVGG16/block3_conv1/BiasAdd/ReadVariableOpб/AkinolaVGG16/block3_conv1/Conv2D/ReadVariableOpб0AkinolaVGG16/block3_conv2/BiasAdd/ReadVariableOpб/AkinolaVGG16/block3_conv2/Conv2D/ReadVariableOpб0AkinolaVGG16/block3_conv3/BiasAdd/ReadVariableOpб/AkinolaVGG16/block3_conv3/Conv2D/ReadVariableOpб0AkinolaVGG16/block4_conv1/BiasAdd/ReadVariableOpб/AkinolaVGG16/block4_conv1/Conv2D/ReadVariableOpб0AkinolaVGG16/block4_conv2/BiasAdd/ReadVariableOpб/AkinolaVGG16/block4_conv2/Conv2D/ReadVariableOpб0AkinolaVGG16/block4_conv3/BiasAdd/ReadVariableOpб/AkinolaVGG16/block4_conv3/Conv2D/ReadVariableOpб0AkinolaVGG16/block5_conv1/BiasAdd/ReadVariableOpб/AkinolaVGG16/block5_conv1/Conv2D/ReadVariableOpб0AkinolaVGG16/block5_conv2/BiasAdd/ReadVariableOpб/AkinolaVGG16/block5_conv2/Conv2D/ReadVariableOpб0AkinolaVGG16/block5_conv3/BiasAdd/ReadVariableOpб/AkinolaVGG16/block5_conv3/Conv2D/ReadVariableOpб+AkinolaVGG16/dense_1/BiasAdd/ReadVariableOpб*AkinolaVGG16/dense_1/MatMul/ReadVariableOpс
/AkinolaVGG16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype021
/AkinolaVGG16/block1_conv1/Conv2D/ReadVariableOpЗ
 AkinolaVGG16/block1_conv1/Conv2DConv2Dinput_27AkinolaVGG16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@*
paddingSAME*
strides
2"
 AkinolaVGG16/block1_conv1/Conv2D┌
0AkinolaVGG16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0AkinolaVGG16/block1_conv1/BiasAdd/ReadVariableOpЫ
!AkinolaVGG16/block1_conv1/BiasAddBiasAdd)AkinolaVGG16/block1_conv1/Conv2D:output:08AkinolaVGG16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@2#
!AkinolaVGG16/block1_conv1/BiasAdd░
AkinolaVGG16/block1_conv1/ReluRelu*AkinolaVGG16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:         ЯЯ@2 
AkinolaVGG16/block1_conv1/Reluс
/AkinolaVGG16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype021
/AkinolaVGG16/block1_conv2/Conv2D/ReadVariableOpЎ
 AkinolaVGG16/block1_conv2/Conv2DConv2D,AkinolaVGG16/block1_conv1/Relu:activations:07AkinolaVGG16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@*
paddingSAME*
strides
2"
 AkinolaVGG16/block1_conv2/Conv2D┌
0AkinolaVGG16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype022
0AkinolaVGG16/block1_conv2/BiasAdd/ReadVariableOpЫ
!AkinolaVGG16/block1_conv2/BiasAddBiasAdd)AkinolaVGG16/block1_conv2/Conv2D:output:08AkinolaVGG16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@2#
!AkinolaVGG16/block1_conv2/BiasAdd░
AkinolaVGG16/block1_conv2/ReluRelu*AkinolaVGG16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:         ЯЯ@2 
AkinolaVGG16/block1_conv2/ReluЖ
 AkinolaVGG16/block1_pool/MaxPoolMaxPool,AkinolaVGG16/block1_conv2/Relu:activations:0*/
_output_shapes
:         pp@*
ksize
*
paddingVALID*
strides
2"
 AkinolaVGG16/block1_pool/MaxPoolС
/AkinolaVGG16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype021
/AkinolaVGG16/block2_conv1/Conv2D/ReadVariableOpЋ
 AkinolaVGG16/block2_conv1/Conv2DConv2D)AkinolaVGG16/block1_pool/MaxPool:output:07AkinolaVGG16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block2_conv1/Conv2D█
0AkinolaVGG16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block2_conv1/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block2_conv1/BiasAddBiasAdd)AkinolaVGG16/block2_conv1/Conv2D:output:08AkinolaVGG16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ2#
!AkinolaVGG16/block2_conv1/BiasAdd»
AkinolaVGG16/block2_conv1/ReluRelu*AkinolaVGG16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ppђ2 
AkinolaVGG16/block2_conv1/Reluт
/AkinolaVGG16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype021
/AkinolaVGG16/block2_conv2/Conv2D/ReadVariableOpў
 AkinolaVGG16/block2_conv2/Conv2DConv2D,AkinolaVGG16/block2_conv1/Relu:activations:07AkinolaVGG16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block2_conv2/Conv2D█
0AkinolaVGG16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block2_conv2/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block2_conv2/BiasAddBiasAdd)AkinolaVGG16/block2_conv2/Conv2D:output:08AkinolaVGG16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ2#
!AkinolaVGG16/block2_conv2/BiasAdd»
AkinolaVGG16/block2_conv2/ReluRelu*AkinolaVGG16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ppђ2 
AkinolaVGG16/block2_conv2/Reluв
 AkinolaVGG16/block2_pool/MaxPoolMaxPool,AkinolaVGG16/block2_conv2/Relu:activations:0*0
_output_shapes
:         88ђ*
ksize
*
paddingVALID*
strides
2"
 AkinolaVGG16/block2_pool/MaxPoolт
/AkinolaVGG16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype021
/AkinolaVGG16/block3_conv1/Conv2D/ReadVariableOpЋ
 AkinolaVGG16/block3_conv1/Conv2DConv2D)AkinolaVGG16/block2_pool/MaxPool:output:07AkinolaVGG16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block3_conv1/Conv2D█
0AkinolaVGG16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block3_conv1/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block3_conv1/BiasAddBiasAdd)AkinolaVGG16/block3_conv1/Conv2D:output:08AkinolaVGG16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2#
!AkinolaVGG16/block3_conv1/BiasAdd»
AkinolaVGG16/block3_conv1/ReluRelu*AkinolaVGG16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2 
AkinolaVGG16/block3_conv1/Reluт
/AkinolaVGG16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype021
/AkinolaVGG16/block3_conv2/Conv2D/ReadVariableOpў
 AkinolaVGG16/block3_conv2/Conv2DConv2D,AkinolaVGG16/block3_conv1/Relu:activations:07AkinolaVGG16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block3_conv2/Conv2D█
0AkinolaVGG16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block3_conv2/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block3_conv2/BiasAddBiasAdd)AkinolaVGG16/block3_conv2/Conv2D:output:08AkinolaVGG16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2#
!AkinolaVGG16/block3_conv2/BiasAdd»
AkinolaVGG16/block3_conv2/ReluRelu*AkinolaVGG16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2 
AkinolaVGG16/block3_conv2/Reluт
/AkinolaVGG16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype021
/AkinolaVGG16/block3_conv3/Conv2D/ReadVariableOpў
 AkinolaVGG16/block3_conv3/Conv2DConv2D,AkinolaVGG16/block3_conv2/Relu:activations:07AkinolaVGG16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block3_conv3/Conv2D█
0AkinolaVGG16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block3_conv3/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block3_conv3/BiasAddBiasAdd)AkinolaVGG16/block3_conv3/Conv2D:output:08AkinolaVGG16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2#
!AkinolaVGG16/block3_conv3/BiasAdd»
AkinolaVGG16/block3_conv3/ReluRelu*AkinolaVGG16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2 
AkinolaVGG16/block3_conv3/Reluв
 AkinolaVGG16/block3_pool/MaxPoolMaxPool,AkinolaVGG16/block3_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2"
 AkinolaVGG16/block3_pool/MaxPoolт
/AkinolaVGG16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype021
/AkinolaVGG16/block4_conv1/Conv2D/ReadVariableOpЋ
 AkinolaVGG16/block4_conv1/Conv2DConv2D)AkinolaVGG16/block3_pool/MaxPool:output:07AkinolaVGG16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block4_conv1/Conv2D█
0AkinolaVGG16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block4_conv1/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block4_conv1/BiasAddBiasAdd)AkinolaVGG16/block4_conv1/Conv2D:output:08AkinolaVGG16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2#
!AkinolaVGG16/block4_conv1/BiasAdd»
AkinolaVGG16/block4_conv1/ReluRelu*AkinolaVGG16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2 
AkinolaVGG16/block4_conv1/Reluт
/AkinolaVGG16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype021
/AkinolaVGG16/block4_conv2/Conv2D/ReadVariableOpў
 AkinolaVGG16/block4_conv2/Conv2DConv2D,AkinolaVGG16/block4_conv1/Relu:activations:07AkinolaVGG16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block4_conv2/Conv2D█
0AkinolaVGG16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block4_conv2/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block4_conv2/BiasAddBiasAdd)AkinolaVGG16/block4_conv2/Conv2D:output:08AkinolaVGG16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2#
!AkinolaVGG16/block4_conv2/BiasAdd»
AkinolaVGG16/block4_conv2/ReluRelu*AkinolaVGG16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2 
AkinolaVGG16/block4_conv2/Reluт
/AkinolaVGG16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype021
/AkinolaVGG16/block4_conv3/Conv2D/ReadVariableOpў
 AkinolaVGG16/block4_conv3/Conv2DConv2D,AkinolaVGG16/block4_conv2/Relu:activations:07AkinolaVGG16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block4_conv3/Conv2D█
0AkinolaVGG16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block4_conv3/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block4_conv3/BiasAddBiasAdd)AkinolaVGG16/block4_conv3/Conv2D:output:08AkinolaVGG16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2#
!AkinolaVGG16/block4_conv3/BiasAdd»
AkinolaVGG16/block4_conv3/ReluRelu*AkinolaVGG16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2 
AkinolaVGG16/block4_conv3/Reluв
 AkinolaVGG16/block4_pool/MaxPoolMaxPool,AkinolaVGG16/block4_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2"
 AkinolaVGG16/block4_pool/MaxPoolт
/AkinolaVGG16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype021
/AkinolaVGG16/block5_conv1/Conv2D/ReadVariableOpЋ
 AkinolaVGG16/block5_conv1/Conv2DConv2D)AkinolaVGG16/block4_pool/MaxPool:output:07AkinolaVGG16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block5_conv1/Conv2D█
0AkinolaVGG16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block5_conv1/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block5_conv1/BiasAddBiasAdd)AkinolaVGG16/block5_conv1/Conv2D:output:08AkinolaVGG16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2#
!AkinolaVGG16/block5_conv1/BiasAdd»
AkinolaVGG16/block5_conv1/ReluRelu*AkinolaVGG16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2 
AkinolaVGG16/block5_conv1/Reluт
/AkinolaVGG16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype021
/AkinolaVGG16/block5_conv2/Conv2D/ReadVariableOpў
 AkinolaVGG16/block5_conv2/Conv2DConv2D,AkinolaVGG16/block5_conv1/Relu:activations:07AkinolaVGG16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block5_conv2/Conv2D█
0AkinolaVGG16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block5_conv2/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block5_conv2/BiasAddBiasAdd)AkinolaVGG16/block5_conv2/Conv2D:output:08AkinolaVGG16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2#
!AkinolaVGG16/block5_conv2/BiasAdd»
AkinolaVGG16/block5_conv2/ReluRelu*AkinolaVGG16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2 
AkinolaVGG16/block5_conv2/Reluт
/AkinolaVGG16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp8akinolavgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype021
/AkinolaVGG16/block5_conv3/Conv2D/ReadVariableOpў
 AkinolaVGG16/block5_conv3/Conv2DConv2D,AkinolaVGG16/block5_conv2/Relu:activations:07AkinolaVGG16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2"
 AkinolaVGG16/block5_conv3/Conv2D█
0AkinolaVGG16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp9akinolavgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype022
0AkinolaVGG16/block5_conv3/BiasAdd/ReadVariableOpы
!AkinolaVGG16/block5_conv3/BiasAddBiasAdd)AkinolaVGG16/block5_conv3/Conv2D:output:08AkinolaVGG16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2#
!AkinolaVGG16/block5_conv3/BiasAdd»
AkinolaVGG16/block5_conv3/ReluRelu*AkinolaVGG16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2 
AkinolaVGG16/block5_conv3/Reluв
 AkinolaVGG16/block5_pool/MaxPoolMaxPool,AkinolaVGG16/block5_conv3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2"
 AkinolaVGG16/block5_pool/MaxPoolЛ
>AkinolaVGG16/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2@
>AkinolaVGG16/global_average_pooling2d_1/Mean/reduction_indicesІ
,AkinolaVGG16/global_average_pooling2d_1/MeanMean)AkinolaVGG16/block5_pool/MaxPool:output:0GAkinolaVGG16/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:         ђ2.
,AkinolaVGG16/global_average_pooling2d_1/MeanИ
AkinolaVGG16/dropout_1/IdentityIdentity5AkinolaVGG16/global_average_pooling2d_1/Mean:output:0*
T0*(
_output_shapes
:         ђ2!
AkinolaVGG16/dropout_1/Identity═
*AkinolaVGG16/dense_1/MatMul/ReadVariableOpReadVariableOp3akinolavgg16_dense_1_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02,
*AkinolaVGG16/dense_1/MatMul/ReadVariableOpн
AkinolaVGG16/dense_1/MatMulMatMul(AkinolaVGG16/dropout_1/Identity:output:02AkinolaVGG16/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
AkinolaVGG16/dense_1/MatMul╦
+AkinolaVGG16/dense_1/BiasAdd/ReadVariableOpReadVariableOp4akinolavgg16_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+AkinolaVGG16/dense_1/BiasAdd/ReadVariableOpН
AkinolaVGG16/dense_1/BiasAddBiasAdd%AkinolaVGG16/dense_1/MatMul:product:03AkinolaVGG16/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
AkinolaVGG16/dense_1/BiasAddц
AkinolaVGG16/softmax_1/SoftmaxSoftmax%AkinolaVGG16/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:         2 
AkinolaVGG16/softmax_1/SoftmaxЭ
IdentityIdentity(AkinolaVGG16/softmax_1/Softmax:softmax:01^AkinolaVGG16/block1_conv1/BiasAdd/ReadVariableOp0^AkinolaVGG16/block1_conv1/Conv2D/ReadVariableOp1^AkinolaVGG16/block1_conv2/BiasAdd/ReadVariableOp0^AkinolaVGG16/block1_conv2/Conv2D/ReadVariableOp1^AkinolaVGG16/block2_conv1/BiasAdd/ReadVariableOp0^AkinolaVGG16/block2_conv1/Conv2D/ReadVariableOp1^AkinolaVGG16/block2_conv2/BiasAdd/ReadVariableOp0^AkinolaVGG16/block2_conv2/Conv2D/ReadVariableOp1^AkinolaVGG16/block3_conv1/BiasAdd/ReadVariableOp0^AkinolaVGG16/block3_conv1/Conv2D/ReadVariableOp1^AkinolaVGG16/block3_conv2/BiasAdd/ReadVariableOp0^AkinolaVGG16/block3_conv2/Conv2D/ReadVariableOp1^AkinolaVGG16/block3_conv3/BiasAdd/ReadVariableOp0^AkinolaVGG16/block3_conv3/Conv2D/ReadVariableOp1^AkinolaVGG16/block4_conv1/BiasAdd/ReadVariableOp0^AkinolaVGG16/block4_conv1/Conv2D/ReadVariableOp1^AkinolaVGG16/block4_conv2/BiasAdd/ReadVariableOp0^AkinolaVGG16/block4_conv2/Conv2D/ReadVariableOp1^AkinolaVGG16/block4_conv3/BiasAdd/ReadVariableOp0^AkinolaVGG16/block4_conv3/Conv2D/ReadVariableOp1^AkinolaVGG16/block5_conv1/BiasAdd/ReadVariableOp0^AkinolaVGG16/block5_conv1/Conv2D/ReadVariableOp1^AkinolaVGG16/block5_conv2/BiasAdd/ReadVariableOp0^AkinolaVGG16/block5_conv2/Conv2D/ReadVariableOp1^AkinolaVGG16/block5_conv3/BiasAdd/ReadVariableOp0^AkinolaVGG16/block5_conv3/Conv2D/ReadVariableOp,^AkinolaVGG16/dense_1/BiasAdd/ReadVariableOp+^AkinolaVGG16/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::2d
0AkinolaVGG16/block1_conv1/BiasAdd/ReadVariableOp0AkinolaVGG16/block1_conv1/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block1_conv1/Conv2D/ReadVariableOp/AkinolaVGG16/block1_conv1/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block1_conv2/BiasAdd/ReadVariableOp0AkinolaVGG16/block1_conv2/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block1_conv2/Conv2D/ReadVariableOp/AkinolaVGG16/block1_conv2/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block2_conv1/BiasAdd/ReadVariableOp0AkinolaVGG16/block2_conv1/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block2_conv1/Conv2D/ReadVariableOp/AkinolaVGG16/block2_conv1/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block2_conv2/BiasAdd/ReadVariableOp0AkinolaVGG16/block2_conv2/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block2_conv2/Conv2D/ReadVariableOp/AkinolaVGG16/block2_conv2/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block3_conv1/BiasAdd/ReadVariableOp0AkinolaVGG16/block3_conv1/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block3_conv1/Conv2D/ReadVariableOp/AkinolaVGG16/block3_conv1/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block3_conv2/BiasAdd/ReadVariableOp0AkinolaVGG16/block3_conv2/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block3_conv2/Conv2D/ReadVariableOp/AkinolaVGG16/block3_conv2/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block3_conv3/BiasAdd/ReadVariableOp0AkinolaVGG16/block3_conv3/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block3_conv3/Conv2D/ReadVariableOp/AkinolaVGG16/block3_conv3/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block4_conv1/BiasAdd/ReadVariableOp0AkinolaVGG16/block4_conv1/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block4_conv1/Conv2D/ReadVariableOp/AkinolaVGG16/block4_conv1/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block4_conv2/BiasAdd/ReadVariableOp0AkinolaVGG16/block4_conv2/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block4_conv2/Conv2D/ReadVariableOp/AkinolaVGG16/block4_conv2/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block4_conv3/BiasAdd/ReadVariableOp0AkinolaVGG16/block4_conv3/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block4_conv3/Conv2D/ReadVariableOp/AkinolaVGG16/block4_conv3/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block5_conv1/BiasAdd/ReadVariableOp0AkinolaVGG16/block5_conv1/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block5_conv1/Conv2D/ReadVariableOp/AkinolaVGG16/block5_conv1/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block5_conv2/BiasAdd/ReadVariableOp0AkinolaVGG16/block5_conv2/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block5_conv2/Conv2D/ReadVariableOp/AkinolaVGG16/block5_conv2/Conv2D/ReadVariableOp2d
0AkinolaVGG16/block5_conv3/BiasAdd/ReadVariableOp0AkinolaVGG16/block5_conv3/BiasAdd/ReadVariableOp2b
/AkinolaVGG16/block5_conv3/Conv2D/ReadVariableOp/AkinolaVGG16/block5_conv3/Conv2D/ReadVariableOp2Z
+AkinolaVGG16/dense_1/BiasAdd/ReadVariableOp+AkinolaVGG16/dense_1/BiasAdd/ReadVariableOp2X
*AkinolaVGG16/dense_1/MatMul/ReadVariableOp*AkinolaVGG16/dense_1/MatMul/ReadVariableOp:Z V
1
_output_shapes
:         ЯЯ
!
_user_specified_name	input_2
┘

▀
F__inference_block3_conv3_layer_call_and_return_conditional_losses_4779

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         88ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         88ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88ђ
 
_user_specified_nameinputs
┘

▀
F__inference_block5_conv2_layer_call_and_return_conditional_losses_6051

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
┘

▀
F__inference_block4_conv2_layer_call_and_return_conditional_losses_4834

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
┘

▀
F__inference_block2_conv2_layer_call_and_return_conditional_losses_4697

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ppђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ppђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ppђ
 
_user_specified_nameinputs
Я
ў
+__inference_AkinolaVGG16_layer_call_fn_5400
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_53412
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ЯЯ
!
_user_specified_name	input_2
ѕ
ђ
+__inference_block3_conv3_layer_call_fn_5960

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_47792
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         88ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         88ђ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         88ђ
 
_user_specified_nameinputs
П
Ќ
+__inference_AkinolaVGG16_layer_call_fn_5820

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_53412
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
┘

▀
F__inference_block5_conv2_layer_call_and_return_conditional_losses_4916

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
┘

▀
F__inference_block5_conv3_layer_call_and_return_conditional_losses_6071

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ч╣
ћ
 __inference__traced_restore_6439
file_prefix(
$assignvariableop_block1_conv1_kernel(
$assignvariableop_1_block1_conv1_bias*
&assignvariableop_2_block1_conv2_kernel(
$assignvariableop_3_block1_conv2_bias*
&assignvariableop_4_block2_conv1_kernel(
$assignvariableop_5_block2_conv1_bias*
&assignvariableop_6_block2_conv2_kernel(
$assignvariableop_7_block2_conv2_bias*
&assignvariableop_8_block3_conv1_kernel(
$assignvariableop_9_block3_conv1_bias+
'assignvariableop_10_block3_conv2_kernel)
%assignvariableop_11_block3_conv2_bias+
'assignvariableop_12_block3_conv3_kernel)
%assignvariableop_13_block3_conv3_bias+
'assignvariableop_14_block4_conv1_kernel)
%assignvariableop_15_block4_conv1_bias+
'assignvariableop_16_block4_conv2_kernel)
%assignvariableop_17_block4_conv2_bias+
'assignvariableop_18_block4_conv3_kernel)
%assignvariableop_19_block4_conv3_bias+
'assignvariableop_20_block5_conv1_kernel)
%assignvariableop_21_block5_conv1_bias+
'assignvariableop_22_block5_conv2_kernel)
%assignvariableop_23_block5_conv2_bias+
'assignvariableop_24_block5_conv3_kernel)
%assignvariableop_25_block5_conv3_bias&
"assignvariableop_26_dense_1_kernel$
 assignvariableop_27_dense_1_bias!
assignvariableop_28_adam_iter#
assignvariableop_29_adam_beta_1#
assignvariableop_30_adam_beta_2"
assignvariableop_31_adam_decay*
&assignvariableop_32_adam_learning_rate
assignvariableop_33_total
assignvariableop_34_count
assignvariableop_35_total_1
assignvariableop_36_count_12
.assignvariableop_37_adam_block5_conv3_kernel_m0
,assignvariableop_38_adam_block5_conv3_bias_m-
)assignvariableop_39_adam_dense_1_kernel_m+
'assignvariableop_40_adam_dense_1_bias_m2
.assignvariableop_41_adam_block5_conv3_kernel_v0
,assignvariableop_42_adam_block5_conv3_bias_v-
)assignvariableop_43_adam_dense_1_kernel_v+
'assignvariableop_44_adam_dense_1_bias_v
identity_46ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9љ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*ю
valueњBЈ.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЖ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesћ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╬
_output_shapes╗
И::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityБ
AssignVariableOpAssignVariableOp$assignvariableop_block1_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Е
AssignVariableOp_1AssignVariableOp$assignvariableop_1_block1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ф
AssignVariableOp_2AssignVariableOp&assignvariableop_2_block1_conv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Е
AssignVariableOp_3AssignVariableOp$assignvariableop_3_block1_conv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ф
AssignVariableOp_4AssignVariableOp&assignvariableop_4_block2_conv1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Е
AssignVariableOp_5AssignVariableOp$assignvariableop_5_block2_conv1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ф
AssignVariableOp_6AssignVariableOp&assignvariableop_6_block2_conv2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Е
AssignVariableOp_7AssignVariableOp$assignvariableop_7_block2_conv2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ф
AssignVariableOp_8AssignVariableOp&assignvariableop_8_block3_conv1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Е
AssignVariableOp_9AssignVariableOp$assignvariableop_9_block3_conv1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10»
AssignVariableOp_10AssignVariableOp'assignvariableop_10_block3_conv2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Г
AssignVariableOp_11AssignVariableOp%assignvariableop_11_block3_conv2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12»
AssignVariableOp_12AssignVariableOp'assignvariableop_12_block3_conv3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Г
AssignVariableOp_13AssignVariableOp%assignvariableop_13_block3_conv3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14»
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block4_conv1_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Г
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block4_conv1_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16»
AssignVariableOp_16AssignVariableOp'assignvariableop_16_block4_conv2_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Г
AssignVariableOp_17AssignVariableOp%assignvariableop_17_block4_conv2_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18»
AssignVariableOp_18AssignVariableOp'assignvariableop_18_block4_conv3_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Г
AssignVariableOp_19AssignVariableOp%assignvariableop_19_block4_conv3_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20»
AssignVariableOp_20AssignVariableOp'assignvariableop_20_block5_conv1_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Г
AssignVariableOp_21AssignVariableOp%assignvariableop_21_block5_conv1_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22»
AssignVariableOp_22AssignVariableOp'assignvariableop_22_block5_conv2_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Г
AssignVariableOp_23AssignVariableOp%assignvariableop_23_block5_conv2_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24»
AssignVariableOp_24AssignVariableOp'assignvariableop_24_block5_conv3_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Г
AssignVariableOp_25AssignVariableOp%assignvariableop_25_block5_conv3_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26ф
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_1_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27е
AssignVariableOp_27AssignVariableOp assignvariableop_27_dense_1_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_28Ц
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_iterIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Д
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_beta_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Д
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_beta_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31д
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_decayIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32«
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_learning_rateIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33А
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34А
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Б
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Б
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Х
AssignVariableOp_37AssignVariableOp.assignvariableop_37_adam_block5_conv3_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38┤
AssignVariableOp_38AssignVariableOp,assignvariableop_38_adam_block5_conv3_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39▒
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_1_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40»
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_1_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41Х
AssignVariableOp_41AssignVariableOp.assignvariableop_41_adam_block5_conv3_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42┤
AssignVariableOp_42AssignVariableOp,assignvariableop_42_adam_block5_conv3_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43▒
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_1_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44»
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_1_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╝
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45»
Identity_46IdentityIdentity_45:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_46"#
identity_46Identity_46:output:0*╦
_input_shapes╣
Х: :::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
┘

▀
F__inference_block4_conv2_layer_call_and_return_conditional_losses_5991

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
┘

▀
F__inference_block3_conv1_layer_call_and_return_conditional_losses_4725

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         88ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         88ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         88ђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         88ђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         88ђ
 
_user_specified_nameinputs
ѓg
А

F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5031
input_2
block1_conv1_4626
block1_conv1_4628
block1_conv2_4653
block1_conv2_4655
block2_conv1_4681
block2_conv1_4683
block2_conv2_4708
block2_conv2_4710
block3_conv1_4736
block3_conv1_4738
block3_conv2_4763
block3_conv2_4765
block3_conv3_4790
block3_conv3_4792
block4_conv1_4818
block4_conv1_4820
block4_conv2_4845
block4_conv2_4847
block4_conv3_4872
block4_conv3_4874
block5_conv1_4900
block5_conv1_4902
block5_conv2_4927
block5_conv2_4929
block5_conv3_4954
block5_conv3_4956
dense_1_5012
dense_1_5014
identityѕб$block1_conv1/StatefulPartitionedCallб$block1_conv2/StatefulPartitionedCallб$block2_conv1/StatefulPartitionedCallб$block2_conv2/StatefulPartitionedCallб$block3_conv1/StatefulPartitionedCallб$block3_conv2/StatefulPartitionedCallб$block3_conv3/StatefulPartitionedCallб$block4_conv1/StatefulPartitionedCallб$block4_conv2/StatefulPartitionedCallб$block4_conv3/StatefulPartitionedCallб$block5_conv1/StatefulPartitionedCallб$block5_conv2/StatefulPartitionedCallб$block5_conv3/StatefulPartitionedCallбdense_1/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCall░
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_2block1_conv1_4626block1_conv1_4628*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block1_conv1_layer_call_and_return_conditional_losses_46152&
$block1_conv1/StatefulPartitionedCallо
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_4653block1_conv2_4655*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block1_conv2_layer_call_and_return_conditional_losses_46422&
$block1_conv2/StatefulPartitionedCallЇ
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block1_pool_layer_call_and_return_conditional_losses_45332
block1_pool/PartitionedCall╠
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_4681block2_conv1_4683*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block2_conv1_layer_call_and_return_conditional_losses_46702&
$block2_conv1/StatefulPartitionedCallН
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_4708block2_conv2_4710*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ppђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block2_conv2_layer_call_and_return_conditional_losses_46972&
$block2_conv2/StatefulPartitionedCallј
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block2_pool_layer_call_and_return_conditional_losses_45452
block2_pool/PartitionedCall╠
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_4736block3_conv1_4738*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv1_layer_call_and_return_conditional_losses_47252&
$block3_conv1/StatefulPartitionedCallН
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_4763block3_conv2_4765*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv2_layer_call_and_return_conditional_losses_47522&
$block3_conv2/StatefulPartitionedCallН
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_4790block3_conv3_4792*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         88ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block3_conv3_layer_call_and_return_conditional_losses_47792&
$block3_conv3/StatefulPartitionedCallј
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block3_pool_layer_call_and_return_conditional_losses_45572
block3_pool/PartitionedCall╠
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_4818block4_conv1_4820*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv1_layer_call_and_return_conditional_losses_48072&
$block4_conv1/StatefulPartitionedCallН
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_4845block4_conv2_4847*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv2_layer_call_and_return_conditional_losses_48342&
$block4_conv2/StatefulPartitionedCallН
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_4872block4_conv3_4874*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block4_conv3_layer_call_and_return_conditional_losses_48612&
$block4_conv3/StatefulPartitionedCallј
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_45692
block4_pool/PartitionedCall╠
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_4900block5_conv1_4902*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv1_layer_call_and_return_conditional_losses_48892&
$block5_conv1/StatefulPartitionedCallН
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_4927block5_conv2_4929*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv2_layer_call_and_return_conditional_losses_49162&
$block5_conv2/StatefulPartitionedCallН
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_4954block5_conv3_4956*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_block5_conv3_layer_call_and_return_conditional_losses_49432&
$block5_conv3/StatefulPartitionedCallј
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block5_pool_layer_call_and_return_conditional_losses_45812
block5_pool/PartitionedCallф
*global_average_pooling2d_1/PartitionedCallPartitionedCall$block5_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *]
fXRV
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_45942,
*global_average_pooling2d_1/PartitionedCallъ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_49732#
!dropout_1/StatefulPartitionedCall░
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_5012dense_1_5014*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_50012!
dense_1/StatefulPartitionedCallЩ
softmax_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_softmax_1_layer_call_and_return_conditional_losses_50222
softmax_1/PartitionedCallи
IdentityIdentity"softmax_1/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*б
_input_shapesљ
Ї:         ЯЯ::::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:Z V
1
_output_shapes
:         ЯЯ
!
_user_specified_name	input_2
┘

▀
F__inference_block2_conv2_layer_call_and_return_conditional_losses_5891

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ*
paddingSAME*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ppђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ppђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ppђ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         ppђ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ppђ
 
_user_specified_nameinputs
ц
F
*__inference_block4_pool_layer_call_fn_4575

inputs
identityж
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_block4_pool_layer_call_and_return_conditional_losses_45692
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▄

▀
F__inference_block1_conv2_layer_call_and_return_conditional_losses_4642

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЯЯ@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ЯЯ@2
ReluА
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ЯЯ@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:         ЯЯ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ЯЯ@
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Х
serving_defaultб
E
input_2:
serving_default_input_2:0         ЯЯ=
	softmax_10
StatefulPartitionedCall:0         tensorflow/serving/predict:╣к
─┌
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
layer-19
layer-20
layer_with_weights-13
layer-21
layer-22
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+Ю&call_and_return_all_conditional_losses
ъ_default_save_signature
Ъ__call__"═М
_tf_keras_network░М{"class_name": "Functional", "name": "AkinolaVGG16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "AkinolaVGG16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d_1", "inbound_nodes": [[["block5_pool", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["global_average_pooling2d_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Softmax", "config": {"name": "softmax_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "softmax_1", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["softmax_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "AkinolaVGG16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d_1", "inbound_nodes": [[["block5_pool", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["global_average_pooling2d_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Softmax", "config": {"name": "softmax_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "softmax_1", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["softmax_1", 0, 0]]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
§"Щ
_tf_keras_input_layer┌{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
■	

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
+а&call_and_return_all_conditional_losses
А__call__"О
_tf_keras_layerй{"class_name": "Conv2D", "name": "block1_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 3]}}
ђ


$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
+б&call_and_return_all_conditional_losses
Б__call__"┘
_tf_keras_layer┐{"class_name": "Conv2D", "name": "block1_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 64]}}
ч
*regularization_losses
+trainable_variables
,	variables
-	keras_api
+ц&call_and_return_all_conditional_losses
Ц__call__"Ж
_tf_keras_layerл{"class_name": "MaxPooling2D", "name": "block1_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ђ


.kernel
/bias
0regularization_losses
1trainable_variables
2	variables
3	keras_api
+д&call_and_return_all_conditional_losses
Д__call__"┌
_tf_keras_layer└{"class_name": "Conv2D", "name": "block2_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 112, 64]}}
Ѓ


4kernel
5bias
6regularization_losses
7trainable_variables
8	variables
9	keras_api
+е&call_and_return_all_conditional_losses
Е__call__"▄
_tf_keras_layer┬{"class_name": "Conv2D", "name": "block2_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 112, 128]}}
ч
:regularization_losses
;trainable_variables
<	variables
=	keras_api
+ф&call_and_return_all_conditional_losses
Ф__call__"Ж
_tf_keras_layerл{"class_name": "MaxPooling2D", "name": "block2_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ђ


>kernel
?bias
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
+г&call_and_return_all_conditional_losses
Г__call__"┌
_tf_keras_layer└{"class_name": "Conv2D", "name": "block3_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 128]}}
Ђ


Dkernel
Ebias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
+«&call_and_return_all_conditional_losses
»__call__"┌
_tf_keras_layer└{"class_name": "Conv2D", "name": "block3_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 256]}}
Ђ


Jkernel
Kbias
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
+░&call_and_return_all_conditional_losses
▒__call__"┌
_tf_keras_layer└{"class_name": "Conv2D", "name": "block3_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 256]}}
ч
Pregularization_losses
Qtrainable_variables
R	variables
S	keras_api
+▓&call_and_return_all_conditional_losses
│__call__"Ж
_tf_keras_layerл{"class_name": "MaxPooling2D", "name": "block3_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ђ


Tkernel
Ubias
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
+┤&call_and_return_all_conditional_losses
х__call__"┌
_tf_keras_layer└{"class_name": "Conv2D", "name": "block4_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 256]}}
Ђ


Zkernel
[bias
\regularization_losses
]trainable_variables
^	variables
_	keras_api
+Х&call_and_return_all_conditional_losses
и__call__"┌
_tf_keras_layer└{"class_name": "Conv2D", "name": "block4_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 512]}}
Ђ


`kernel
abias
bregularization_losses
ctrainable_variables
d	variables
e	keras_api
+И&call_and_return_all_conditional_losses
╣__call__"┌
_tf_keras_layer└{"class_name": "Conv2D", "name": "block4_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 512]}}
ч
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
+║&call_and_return_all_conditional_losses
╗__call__"Ж
_tf_keras_layerл{"class_name": "MaxPooling2D", "name": "block4_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ђ


jkernel
kbias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
+╝&call_and_return_all_conditional_losses
й__call__"┌
_tf_keras_layer└{"class_name": "Conv2D", "name": "block5_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 512]}}
Ђ


pkernel
qbias
rregularization_losses
strainable_variables
t	variables
u	keras_api
+Й&call_and_return_all_conditional_losses
┐__call__"┌
_tf_keras_layer└{"class_name": "Conv2D", "name": "block5_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 512]}}
 	

vkernel
wbias
xregularization_losses
ytrainable_variables
z	variables
{	keras_api
+└&call_and_return_all_conditional_losses
┴__call__"п
_tf_keras_layerЙ{"class_name": "Conv2D", "name": "block5_conv3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_conv3", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 512]}}
щ
|regularization_losses
}trainable_variables
~	variables
	keras_api
+┬&call_and_return_all_conditional_losses
├__call__"У
_tf_keras_layer╬{"class_name": "MaxPooling2D", "name": "block5_pool", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_pool", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Ю
ђregularization_losses
Ђtrainable_variables
ѓ	variables
Ѓ	keras_api
+─&call_and_return_all_conditional_losses
┼__call__"ѕ
_tf_keras_layerЬ{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
в
ёregularization_losses
Ёtrainable_variables
є	variables
Є	keras_api
+к&call_and_return_all_conditional_losses
К__call__"о
_tf_keras_layer╝{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
ч
ѕkernel
	Ѕbias
іregularization_losses
Іtrainable_variables
ї	variables
Ї	keras_api
+╚&call_and_return_all_conditional_losses
╔__call__"╬
_tf_keras_layer┤{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
╚
јregularization_losses
Јtrainable_variables
љ	variables
Љ	keras_api
+╩&call_and_return_all_conditional_losses
╦__call__"│
_tf_keras_layerЎ{"class_name": "Softmax", "name": "softmax_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "softmax_1", "trainable": true, "dtype": "float32", "axis": -1}}
г
	њiter
Њbeta_1
ћbeta_2

Ћdecay
ќlearning_ratevmЋwmќ	ѕmЌ	ЅmўvvЎwvџ	ѕvЏ	Ѕvю"
	optimizer
 "
trackable_list_wrapper
>
v0
w1
ѕ2
Ѕ3"
trackable_list_wrapper
Э
0
1
$2
%3
.4
/5
46
57
>8
?9
D10
E11
J12
K13
T14
U15
Z16
[17
`18
a19
j20
k21
p22
q23
v24
w25
ѕ26
Ѕ27"
trackable_list_wrapper
М
regularization_losses
Ќlayers
 ўlayer_regularization_losses
Ўlayer_metrics
trainable_variables
	variables
џmetrics
Џnon_trainable_variables
Ъ__call__
ъ_default_save_signature
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
-
╠serving_default"
signature_map
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
х
 regularization_losses
юlayers
 Юlayer_regularization_losses
ъlayer_metrics
!trainable_variables
"	variables
Ъmetrics
аnon_trainable_variables
А__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
х
&regularization_losses
Аlayers
 бlayer_regularization_losses
Бlayer_metrics
'trainable_variables
(	variables
цmetrics
Цnon_trainable_variables
Б__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
*regularization_losses
дlayers
 Дlayer_regularization_losses
еlayer_metrics
+trainable_variables
,	variables
Еmetrics
фnon_trainable_variables
Ц__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
.:,@ђ2block2_conv1/kernel
 :ђ2block2_conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
х
0regularization_losses
Фlayers
 гlayer_regularization_losses
Гlayer_metrics
1trainable_variables
2	variables
«metrics
»non_trainable_variables
Д__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
/:-ђђ2block2_conv2/kernel
 :ђ2block2_conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
х
6regularization_losses
░layers
 ▒layer_regularization_losses
▓layer_metrics
7trainable_variables
8	variables
│metrics
┤non_trainable_variables
Е__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
:regularization_losses
хlayers
 Хlayer_regularization_losses
иlayer_metrics
;trainable_variables
<	variables
Иmetrics
╣non_trainable_variables
Ф__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
/:-ђђ2block3_conv1/kernel
 :ђ2block3_conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
х
@regularization_losses
║layers
 ╗layer_regularization_losses
╝layer_metrics
Atrainable_variables
B	variables
йmetrics
Йnon_trainable_variables
Г__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
/:-ђђ2block3_conv2/kernel
 :ђ2block3_conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
х
Fregularization_losses
┐layers
 └layer_regularization_losses
┴layer_metrics
Gtrainable_variables
H	variables
┬metrics
├non_trainable_variables
»__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
/:-ђђ2block3_conv3/kernel
 :ђ2block3_conv3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
х
Lregularization_losses
─layers
 ┼layer_regularization_losses
кlayer_metrics
Mtrainable_variables
N	variables
Кmetrics
╚non_trainable_variables
▒__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Pregularization_losses
╔layers
 ╩layer_regularization_losses
╦layer_metrics
Qtrainable_variables
R	variables
╠metrics
═non_trainable_variables
│__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
/:-ђђ2block4_conv1/kernel
 :ђ2block4_conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
х
Vregularization_losses
╬layers
 ¤layer_regularization_losses
лlayer_metrics
Wtrainable_variables
X	variables
Лmetrics
мnon_trainable_variables
х__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
/:-ђђ2block4_conv2/kernel
 :ђ2block4_conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
х
\regularization_losses
Мlayers
 нlayer_regularization_losses
Нlayer_metrics
]trainable_variables
^	variables
оmetrics
Оnon_trainable_variables
и__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
/:-ђђ2block4_conv3/kernel
 :ђ2block4_conv3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
х
bregularization_losses
пlayers
 ┘layer_regularization_losses
┌layer_metrics
ctrainable_variables
d	variables
█metrics
▄non_trainable_variables
╣__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
fregularization_losses
Пlayers
 яlayer_regularization_losses
▀layer_metrics
gtrainable_variables
h	variables
Яmetrics
рnon_trainable_variables
╗__call__
+║&call_and_return_all_conditional_losses
'║"call_and_return_conditional_losses"
_generic_user_object
/:-ђђ2block5_conv1/kernel
 :ђ2block5_conv1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
х
lregularization_losses
Рlayers
 сlayer_regularization_losses
Сlayer_metrics
mtrainable_variables
n	variables
тmetrics
Тnon_trainable_variables
й__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses"
_generic_user_object
/:-ђђ2block5_conv2/kernel
 :ђ2block5_conv2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
х
rregularization_losses
уlayers
 Уlayer_regularization_losses
жlayer_metrics
strainable_variables
t	variables
Жmetrics
вnon_trainable_variables
┐__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
/:-ђђ2block5_conv3/kernel
 :ђ2block5_conv3/bias
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
х
xregularization_losses
Вlayers
 ьlayer_regularization_losses
Ьlayer_metrics
ytrainable_variables
z	variables
№metrics
­non_trainable_variables
┴__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
|regularization_losses
ыlayers
 Ыlayer_regularization_losses
зlayer_metrics
}trainable_variables
~	variables
Зmetrics
шnon_trainable_variables
├__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
ђregularization_losses
Шlayers
 эlayer_regularization_losses
Эlayer_metrics
Ђtrainable_variables
ѓ	variables
щmetrics
Щnon_trainable_variables
┼__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
ёregularization_losses
чlayers
 Чlayer_regularization_losses
§layer_metrics
Ёtrainable_variables
є	variables
■metrics
 non_trainable_variables
К__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
!:	ђ2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
0
ѕ0
Ѕ1"
trackable_list_wrapper
0
ѕ0
Ѕ1"
trackable_list_wrapper
И
іregularization_losses
ђlayers
 Ђlayer_regularization_losses
ѓlayer_metrics
Іtrainable_variables
ї	variables
Ѓmetrics
ёnon_trainable_variables
╔__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
јregularization_losses
Ёlayers
 єlayer_regularization_losses
Єlayer_metrics
Јtrainable_variables
љ	variables
ѕmetrics
Ѕnon_trainable_variables
╦__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╬
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
і0
І1"
trackable_list_wrapper
о
0
1
$2
%3
.4
/5
46
57
>8
?9
D10
E11
J12
K13
T14
U15
Z16
[17
`18
a19
j20
k21
p22
q23"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┐

їtotal

Їcount
ј	variables
Ј	keras_api"ё
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
ё

љtotal

Љcount
њ
_fn_kwargs
Њ	variables
ћ	keras_api"И
_tf_keras_metricЮ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
ї0
Ї1"
trackable_list_wrapper
.
ј	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
љ0
Љ1"
trackable_list_wrapper
.
Њ	variables"
_generic_user_object
4:2ђђ2Adam/block5_conv3/kernel/m
%:#ђ2Adam/block5_conv3/bias/m
&:$	ђ2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
4:2ђђ2Adam/block5_conv3/kernel/v
%:#ђ2Adam/block5_conv3/bias/v
&:$	ђ2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
Т2с
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5588
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5698
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5113
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5031└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
у2С
__inference__wrapped_model_4527└
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *0б-
+і(
input_2         ЯЯ
Щ2э
+__inference_AkinolaVGG16_layer_call_fn_5257
+__inference_AkinolaVGG16_layer_call_fn_5759
+__inference_AkinolaVGG16_layer_call_fn_5820
+__inference_AkinolaVGG16_layer_call_fn_5400└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
­2ь
F__inference_block1_conv1_layer_call_and_return_conditional_losses_5831б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block1_conv1_layer_call_fn_5840б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_block1_conv2_layer_call_and_return_conditional_losses_5851б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block1_conv2_layer_call_fn_5860б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Г2ф
E__inference_block1_pool_layer_call_and_return_conditional_losses_4533Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
њ2Ј
*__inference_block1_pool_layer_call_fn_4539Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
­2ь
F__inference_block2_conv1_layer_call_and_return_conditional_losses_5871б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block2_conv1_layer_call_fn_5880б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_block2_conv2_layer_call_and_return_conditional_losses_5891б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block2_conv2_layer_call_fn_5900б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Г2ф
E__inference_block2_pool_layer_call_and_return_conditional_losses_4545Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
њ2Ј
*__inference_block2_pool_layer_call_fn_4551Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
­2ь
F__inference_block3_conv1_layer_call_and_return_conditional_losses_5911б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block3_conv1_layer_call_fn_5920б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_block3_conv2_layer_call_and_return_conditional_losses_5931б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block3_conv2_layer_call_fn_5940б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_block3_conv3_layer_call_and_return_conditional_losses_5951б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block3_conv3_layer_call_fn_5960б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Г2ф
E__inference_block3_pool_layer_call_and_return_conditional_losses_4557Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
њ2Ј
*__inference_block3_pool_layer_call_fn_4563Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
­2ь
F__inference_block4_conv1_layer_call_and_return_conditional_losses_5971б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block4_conv1_layer_call_fn_5980б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_block4_conv2_layer_call_and_return_conditional_losses_5991б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block4_conv2_layer_call_fn_6000б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_block4_conv3_layer_call_and_return_conditional_losses_6011б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block4_conv3_layer_call_fn_6020б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Г2ф
E__inference_block4_pool_layer_call_and_return_conditional_losses_4569Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
њ2Ј
*__inference_block4_pool_layer_call_fn_4575Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
­2ь
F__inference_block5_conv1_layer_call_and_return_conditional_losses_6031б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block5_conv1_layer_call_fn_6040б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_block5_conv2_layer_call_and_return_conditional_losses_6051б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block5_conv2_layer_call_fn_6060б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_block5_conv3_layer_call_and_return_conditional_losses_6071б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_block5_conv3_layer_call_fn_6080б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Г2ф
E__inference_block5_pool_layer_call_and_return_conditional_losses_4581Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
њ2Ј
*__inference_block5_pool_layer_call_fn_4587Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
╝2╣
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_4594Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
А2ъ
9__inference_global_average_pooling2d_1_layer_call_fn_4600Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
─2┴
C__inference_dropout_1_layer_call_and_return_conditional_losses_6092
C__inference_dropout_1_layer_call_and_return_conditional_losses_6097┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ј2І
(__inference_dropout_1_layer_call_fn_6102
(__inference_dropout_1_layer_call_fn_6107┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
в2У
A__inference_dense_1_layer_call_and_return_conditional_losses_6117б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
л2═
&__inference_dense_1_layer_call_fn_6126б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Щ2э
C__inference_softmax_1_layer_call_and_return_conditional_losses_6131»
д▓б
FullArgSpec%
argsџ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsб

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
▀2▄
(__inference_softmax_1_layer_call_fn_6136»
д▓б
FullArgSpec%
argsџ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsб

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╔Bк
"__inference_signature_wrapper_5471input_2"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 о
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5031І$%./45>?DEJKTUZ[`ajkpqvwѕЅBб?
8б5
+і(
input_2         ЯЯ
p

 
ф "%б"
і
0         
џ о
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5113І$%./45>?DEJKTUZ[`ajkpqvwѕЅBб?
8б5
+і(
input_2         ЯЯ
p 

 
ф "%б"
і
0         
џ Н
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5588і$%./45>?DEJKTUZ[`ajkpqvwѕЅAб>
7б4
*і'
inputs         ЯЯ
p

 
ф "%б"
і
0         
џ Н
F__inference_AkinolaVGG16_layer_call_and_return_conditional_losses_5698і$%./45>?DEJKTUZ[`ajkpqvwѕЅAб>
7б4
*і'
inputs         ЯЯ
p 

 
ф "%б"
і
0         
џ Г
+__inference_AkinolaVGG16_layer_call_fn_5257~$%./45>?DEJKTUZ[`ajkpqvwѕЅBб?
8б5
+і(
input_2         ЯЯ
p

 
ф "і         Г
+__inference_AkinolaVGG16_layer_call_fn_5400~$%./45>?DEJKTUZ[`ajkpqvwѕЅBб?
8б5
+і(
input_2         ЯЯ
p 

 
ф "і         г
+__inference_AkinolaVGG16_layer_call_fn_5759}$%./45>?DEJKTUZ[`ajkpqvwѕЅAб>
7б4
*і'
inputs         ЯЯ
p

 
ф "і         г
+__inference_AkinolaVGG16_layer_call_fn_5820}$%./45>?DEJKTUZ[`ajkpqvwѕЅAб>
7б4
*і'
inputs         ЯЯ
p 

 
ф "і         и
__inference__wrapped_model_4527Њ$%./45>?DEJKTUZ[`ajkpqvwѕЅ:б7
0б-
+і(
input_2         ЯЯ
ф "5ф2
0
	softmax_1#і 
	softmax_1         ║
F__inference_block1_conv1_layer_call_and_return_conditional_losses_5831p9б6
/б,
*і'
inputs         ЯЯ
ф "/б,
%і"
0         ЯЯ@
џ њ
+__inference_block1_conv1_layer_call_fn_5840c9б6
/б,
*і'
inputs         ЯЯ
ф ""і         ЯЯ@║
F__inference_block1_conv2_layer_call_and_return_conditional_losses_5851p$%9б6
/б,
*і'
inputs         ЯЯ@
ф "/б,
%і"
0         ЯЯ@
џ њ
+__inference_block1_conv2_layer_call_fn_5860c$%9б6
/б,
*і'
inputs         ЯЯ@
ф ""і         ЯЯ@У
E__inference_block1_pool_layer_call_and_return_conditional_losses_4533ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ └
*__inference_block1_pool_layer_call_fn_4539ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    и
F__inference_block2_conv1_layer_call_and_return_conditional_losses_5871m./7б4
-б*
(і%
inputs         pp@
ф ".б+
$і!
0         ppђ
џ Ј
+__inference_block2_conv1_layer_call_fn_5880`./7б4
-б*
(і%
inputs         pp@
ф "!і         ppђИ
F__inference_block2_conv2_layer_call_and_return_conditional_losses_5891n458б5
.б+
)і&
inputs         ppђ
ф ".б+
$і!
0         ppђ
џ љ
+__inference_block2_conv2_layer_call_fn_5900a458б5
.б+
)і&
inputs         ppђ
ф "!і         ppђУ
E__inference_block2_pool_layer_call_and_return_conditional_losses_4545ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ └
*__inference_block2_pool_layer_call_fn_4551ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    И
F__inference_block3_conv1_layer_call_and_return_conditional_losses_5911n>?8б5
.б+
)і&
inputs         88ђ
ф ".б+
$і!
0         88ђ
џ љ
+__inference_block3_conv1_layer_call_fn_5920a>?8б5
.б+
)і&
inputs         88ђ
ф "!і         88ђИ
F__inference_block3_conv2_layer_call_and_return_conditional_losses_5931nDE8б5
.б+
)і&
inputs         88ђ
ф ".б+
$і!
0         88ђ
џ љ
+__inference_block3_conv2_layer_call_fn_5940aDE8б5
.б+
)і&
inputs         88ђ
ф "!і         88ђИ
F__inference_block3_conv3_layer_call_and_return_conditional_losses_5951nJK8б5
.б+
)і&
inputs         88ђ
ф ".б+
$і!
0         88ђ
џ љ
+__inference_block3_conv3_layer_call_fn_5960aJK8б5
.б+
)і&
inputs         88ђ
ф "!і         88ђУ
E__inference_block3_pool_layer_call_and_return_conditional_losses_4557ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ └
*__inference_block3_pool_layer_call_fn_4563ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    И
F__inference_block4_conv1_layer_call_and_return_conditional_losses_5971nTU8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ љ
+__inference_block4_conv1_layer_call_fn_5980aTU8б5
.б+
)і&
inputs         ђ
ф "!і         ђИ
F__inference_block4_conv2_layer_call_and_return_conditional_losses_5991nZ[8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ љ
+__inference_block4_conv2_layer_call_fn_6000aZ[8б5
.б+
)і&
inputs         ђ
ф "!і         ђИ
F__inference_block4_conv3_layer_call_and_return_conditional_losses_6011n`a8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ љ
+__inference_block4_conv3_layer_call_fn_6020a`a8б5
.б+
)і&
inputs         ђ
ф "!і         ђУ
E__inference_block4_pool_layer_call_and_return_conditional_losses_4569ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ └
*__inference_block4_pool_layer_call_fn_4575ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    И
F__inference_block5_conv1_layer_call_and_return_conditional_losses_6031njk8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ љ
+__inference_block5_conv1_layer_call_fn_6040ajk8б5
.б+
)і&
inputs         ђ
ф "!і         ђИ
F__inference_block5_conv2_layer_call_and_return_conditional_losses_6051npq8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ љ
+__inference_block5_conv2_layer_call_fn_6060apq8б5
.б+
)і&
inputs         ђ
ф "!і         ђИ
F__inference_block5_conv3_layer_call_and_return_conditional_losses_6071nvw8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ љ
+__inference_block5_conv3_layer_call_fn_6080avw8б5
.б+
)і&
inputs         ђ
ф "!і         ђУ
E__inference_block5_pool_layer_call_and_return_conditional_losses_4581ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ └
*__inference_block5_pool_layer_call_fn_4587ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ц
A__inference_dense_1_layer_call_and_return_conditional_losses_6117_ѕЅ0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         
џ |
&__inference_dense_1_layer_call_fn_6126RѕЅ0б-
&б#
!і
inputs         ђ
ф "і         Ц
C__inference_dropout_1_layer_call_and_return_conditional_losses_6092^4б1
*б'
!і
inputs         ђ
p
ф "&б#
і
0         ђ
џ Ц
C__inference_dropout_1_layer_call_and_return_conditional_losses_6097^4б1
*б'
!і
inputs         ђ
p 
ф "&б#
і
0         ђ
џ }
(__inference_dropout_1_layer_call_fn_6102Q4б1
*б'
!і
inputs         ђ
p
ф "і         ђ}
(__inference_dropout_1_layer_call_fn_6107Q4б1
*б'
!і
inputs         ђ
p 
ф "і         ђП
T__inference_global_average_pooling2d_1_layer_call_and_return_conditional_losses_4594ёRбO
HбE
Cі@
inputs4                                    
ф ".б+
$і!
0                  
џ ┤
9__inference_global_average_pooling2d_1_layer_call_fn_4600wRбO
HбE
Cі@
inputs4                                    
ф "!і                  ┼
"__inference_signature_wrapper_5471ъ$%./45>?DEJKTUZ[`ajkpqvwѕЅEбB
б 
;ф8
6
input_2+і(
input_2         ЯЯ"5ф2
0
	softmax_1#і 
	softmax_1         Б
C__inference_softmax_1_layer_call_and_return_conditional_losses_6131\3б0
)б&
 і
inputs         

 
ф "%б"
і
0         
џ {
(__inference_softmax_1_layer_call_fn_6136O3б0
)б&
 і
inputs         

 
ф "і         