#!/bin/bash
#PBS -A IscrC_STARAI_0
#PBS -N tria_lbfgs
#PBS -l walltime=24:00:00
#PBS -l select=1:ncpus=1

cd $WORK/ml/relational/triazine/pascal_quick_lbfgs/lb1/lbfgs

echo "induce_pascal_func([f4,f2,f3],1,2,10,P),test_pascal(P,[f1],LL,AUCROC,ROC,AUCPR,PR),write('LL: '),write(LL),nl,write('AUCROC: '),write(AUCROC),nl,write('AUCPR: '),write(AUCPR),halt." | $HOME/opt/swipl-7.7.4/bin/swipl triazine.pl 1>out-training1.txt
echo "induce_pascal_func([f1,f3,f4],1,2,10,P),test_pascal(P,[f2],LL,AUCROC,ROC,AUCPR,PR),write('LL: '),write(LL),nl,write('AUCROC: '),write(AUCROC),nl,write('AUCPR: '),write(AUCPR),halt." | $HOME/opt/swipl-7.7.4/bin/swipl triazine.pl 1>out-training2.txt
echo "induce_pascal_func([f1,f2,f4],1,2,10,P),test_pascal(P,[f3],LL,AUCROC,ROC,AUCPR,PR),write('LL: '),write(LL),nl,write('AUCROC: '),write(AUCROC),nl,write('AUCPR: '),write(AUCPR),halt." | $HOME/opt/swipl-7.7.4/bin/swipl triazine.pl 1>out-training3.txt
echo "induce_pascal_func([f1,f2,f3],1,2,10,P),test_pascal(P,[f4],LL,AUCROC,ROC,AUCPR,PR),write('LL: '),write(LL),nl,write('AUCROC: '),write(AUCROC),nl,write('AUCPR: '),write(AUCPR),halt." | $HOME/opt/swipl-7.7.4/bin/swipl triazine.pl 1>out-training4.txt

