conda create --name habitat-research python=3.7 -y
conda activate habitat-research


git clone https://github.com/facebookresearch/habitat-api.git
cd habitat-api
pip install -e .

cd ..

git clone https://github.com/facebookresearch/habitat-sim.git
cd habitat-smi
python setup.py install
python setup.py install --headless


cd ..
wget http://dl.fbaipublicfiles.com/habitat/habitat-test-scenes.zip
unzip habitat-test-scenes.zip
rm habitat-test-scenes.zip

mv ./data ./habitat-api/

cd habitat-api
python examples/example.py
