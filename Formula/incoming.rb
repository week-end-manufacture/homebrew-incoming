class Incoming < Formula
    include Language::Python::Virtualenv

    desc "Our best file encoder"
    homepage "https://github.com/week-end-manufacture/incoming"
    url "https://github.com/week-end-manufacture/incoming/archive/refs/tags/be0.0.1.tar.gz"
    sha256 "d86972dfde5f05a96fc6929dd4bf7b5b604de7e7ae0df02572069cdf31191baf"
    version "beta0.0.1"
    license "MIT"
  
    depends_on "python@3.9"

    def install
        virtualenv_install_with_resources
    end
  end