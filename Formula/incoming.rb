class Incoming < Formula
    include Language::Python::Virtualenv

    desc "Our best file encoder"
    homepage "https://github.com/week-end-manufacture/incoming"
    url "https://github.com/week-end-manufacture/incoming/archive/refs/tags/beta0.0.1.tar.gz"
    sha256 "4077a12deae15d625e58329c2dfe568abaf2842420f64912ed7aa28273dbf6d6"
    version "beta0.0.1"
    license "MIT"
  
    depends_on "python@3.9"

    def install
        virtualenv_install_with_resources
    end
  end