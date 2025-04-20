git clone --depth=1 --single-branch --branch=main git@github.com:ultrasaurus/altwebgen.git 
cd altwebgen
cargo install --path ..
cd ..
altwebgen build
