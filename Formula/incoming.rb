class Incoming < Formula
    include Language::Python::Virtualenv

    desc "Our best file encoder"
    homepage "https://github.com/week-end-manufacture/incoming"
    url "https://github.com/week-end-manufacture/incoming/archive/refs/tags/beta0.0.1.tar.gz"
    sha256 "3b5b1c13f70242305ab394e01298335fb650b8d10933cded61384949013151bc"
    version "beta0.0.1"
    license "MIT"
  
    depends_on "python@3.9"

    def install
        virtualenv_install_with_resources
    end
  end