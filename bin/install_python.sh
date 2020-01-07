mkdir -p /opt
cd /opt
wget --no-check-certificate https://repo.continuum.io/miniconda/Miniconda3-4.6.14-Linux-x86_64.sh \
    && /bin/bash Miniconda3-4.6.14-Linux-x86_64.sh -f -b -p /opt/miniconda \
    && /opt/miniconda/bin/conda install -yq conda=4.6.14=py36_0 \
    && /opt/miniconda/bin/conda clean -yq -a


export PATH=/opt/miniconda/bin:$PATH
conda install -yq numpy=1.16.0 scipy=1.2.0 matplotlib=3.0.1 pandas=0.25 scikit-learn=0.20.3 tqdm>=4.26.0 \
    && conda install -yq -c rdkit rdkit \
    && conda install -yq -c pytorch pytorch=1.1.0 torchvision=0.2.1 \
    && conda clean -yq -a

