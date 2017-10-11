# Here specify the directory where the sequences deposit,
# the dir must only include the sequences data
DATA=/its1/data/2017/05/fangang_SRA

# Upload data by ascp
ASCP=/opt/bio/aspera_connect/bin/ascp
ASCPKEY=/its1/GB_BT2/jianzuoyi/biosoft/ascp/aspera.openssh
$ASCP -i $ASCPKEY -QT -l100m -k1 -d $DATA  subasp@upload.ncbi.nlm.nih.gov:uploads/jianzuoyi@qq.com_1xRqFBNk
