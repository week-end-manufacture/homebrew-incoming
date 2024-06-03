class Incoming < Formula
    include Language::Python::Virtualenv

    desc "Our best file encoder"
    homepage "https://github.com/week-end-manufacture/incoming"
    url "https://github.com/week-end-manufacture/incoming/archive/refs/tags/beta0.0.1.tar.gz"
    sha256 "18db537650fde8782f74275457b96deba7069624858ffc0bf8e98290f035d2f9"
    version "beta0.0.1"
    license "MIT"
  
    depends_on "python@3.9"
    depends_on "pkg-config"
    depends_on "libjpeg"
    depends_on "libpng"

    resource "setuptools" do
        url "https://files.pythonhosted.org/packages/d6/4f/b10f707e14ef7de524fe1f8988a294fb262a29c9b5b12275c7e188864aed/setuptools-69.5.1.tar.gz"
        sha256 "6c1fccdac05a97e598fb0ae3bbed5904ccb317337a51139dcd51453611bbb987"
    end

    resource "altgraph" do
        url "https://files.pythonhosted.org/packages/de/a8/7145824cf0b9e3c28046520480f207df47e927df83aa9555fb47f8505922/altgraph-0.17.4.tar.gz"
        sha256 "1b5afbb98f6c4dcadb2e2ae6ab9fa994bbb8c1d75f4fa96d340f9437ae454406"
    end

    resource "Brotli" do
        url "https://files.pythonhosted.org/packages/2f/c2/f9e977608bdf958650638c3f1e28f85a1b075f075ebbe77db8555463787b/Brotli-1.1.0.tar.gz"
        sha256 "81de08ac11bcb85841e440c13611c00b67d3bf82698314928d0b676362546724"
    end

    resource "colorlog" do
        url "https://files.pythonhosted.org/packages/db/38/2992ff192eaa7dd5a793f8b6570d6bbe887c4fbbf7e72702eb0a693a01c8/colorlog-6.8.2.tar.gz"
        sha256 "3e3e079a41feb5a1b64f978b5ea4f46040a94f11f0e8bbb8261e3dbbeca64d44"
    end

    resource "inflate64" do
        url "https://files.pythonhosted.org/packages/8c/99/18f9940d4a3f2cabc4396a587ddf1bd93236bdb372d9e78e2b0365e40990/inflate64-1.0.0.tar.gz"
        sha256 "3278827b803cf006a1df251f3e13374c7d26db779e5a33329cc11789b804bc2d"
    end

    resource "macholib" do
        url "https://files.pythonhosted.org/packages/95/ee/af1a3842bdd5902ce133bd246eb7ffd4375c38642aeb5dc0ae3a0329dfa2/macholib-1.16.3.tar.gz"
        sha256 "07ae9e15e8e4cd9a788013d81f5908b3609aa76f9b1421bae9c4d7606ec86a30"
    end

    resource "multivolumefile" do
        url "https://files.pythonhosted.org/packages/50/f0/a7786212b5a4cb9ba05ae84a2bbd11d1d0279523aea0424b6d981d652a14/multivolumefile-0.2.3.tar.gz"
        sha256 "a0648d0aafbc96e59198d5c17e9acad7eb531abea51035d08ce8060dcad709d6"
    end

    resource "packaging" do
        url "https://files.pythonhosted.org/packages/ee/b5/b43a27ac7472e1818c4bafd44430e69605baefe1f34440593e0332ec8b4d/packaging-24.0.tar.gz"
        sha256 "eb82c5e3e56209074766e6885bb04b8c38a0c015d0a30036ebe7ece34c9989e9"
    end

    resource "pillow" do
        url "https://files.pythonhosted.org/packages/ef/43/c50c17c5f7d438e836c169e343695534c38c77f60e7c90389bd77981bc21/pillow-10.3.0.tar.gz"
        sha256 "9d2455fbf44c914840c793e89aa82d0e1763a14253a000743719ae5946814b2d"
    end

    resource "psutil" do
        url "https://files.pythonhosted.org/packages/90/c7/6dc0a455d111f68ee43f27793971cf03fe29b6ef972042549db29eec39a2/psutil-5.9.8.tar.gz"
        sha256 "6be126e3225486dff286a8fb9a06246a5253f4c7c53b475ea5f5ac934e64194c"
    end

    resource "py7zr" do
        url "https://files.pythonhosted.org/packages/fa/5c/44db15249a140e62589ea5c3980fba9988a8d73297575255f3a28dfc3ad4/py7zr-0.21.0.tar.gz"
        sha256 "213a9cc46940fb8f63b4163643a8f5b36bbc798134746c3992d3bc6b14edab87"
    end

    resource "pybcj" do
        url "https://files.pythonhosted.org/packages/37/d2/22e808b9d25ce3b43f5c8a9e22d873d403485ba55d84a4d6d5d044881762/pybcj-1.0.2.tar.gz"
        sha256 "c7f5bef7f47723c53420e377bc64d2553843bee8bcac5f0ad076ab1524780018"
    end

    resource "pycryptodomex" do
        url "https://files.pythonhosted.org/packages/31/a4/b03a16637574312c1b54c55aedeed8a4cb7d101d44058d46a0e5706c63e1/pycryptodomex-3.20.0.tar.gz"
        sha256 "7a710b79baddd65b806402e14766c721aee8fb83381769c27920f26476276c1e"
    end

    resource "pyppmd" do
        url "https://files.pythonhosted.org/packages/39/c8/9039c7503577de08a3f4c81e7619583efdc16030da6d1a25268d3dca49c8/pyppmd-1.1.0.tar.gz"
        sha256 "1d38ce2e4b7eb84b53bc8a52380b94f66ba6c39328b8800b30c2b5bf31693973"
    end

    resource "pyzstd" do
        url "https://files.pythonhosted.org/packages/0f/ae/dc18432a364b34e7adbc0edc32de44dd5310184112945552c106ab913f39/pyzstd-0.15.10.tar.gz"
        sha256 "83603a97fdbcf2139f475c940789f09e32703f931f29f4a8ddf3551e6700108b"
    end
    
    resource "rarfile" do
        url "https://files.pythonhosted.org/packages/26/3f/3118a797444e7e30e784921c4bfafb6500fb288a0c84cb8c32ed15853c16/rarfile-4.2.tar.gz"
        sha256 "8e1c8e72d0845ad2b32a47ab11a719bc2e41165ec101fd4d3fe9e92aa3f469ef"
    end

    resource "texttable" do
        url "https://files.pythonhosted.org/packages/1c/dc/0aff23d6036a4d3bf4f1d8c8204c5c79c4437e25e0ae94ffe4bbb55ee3c2/texttable-1.7.0.tar.gz"
        sha256 "2d2068fb55115807d3ac77a4ca68fa48803e84ebb0ee2340f858107a36522638"
    end

    resource "unrar" do
        url "https://files.pythonhosted.org/packages/ea/d6/b53a4216d73a10602f524cf728c3c272b2e1f524b62f46589303225564c0/unrar-0.4.tar.gz"
        sha256 "b24447a5b93024be600ef8255668ba23a30f451176577b691559ea1359f7d164"
    end

    def install
        virtualenv_install_with_resources
    end
  end