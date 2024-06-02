class Incoming < Formula
    include Language::Python::Virtualenv

    desc "Our best file encoder"
    homepage "https://github.com/week-end-manufacture/incoming"
    url "https://github.com/week-end-manufacture/incoming/archive/refs/tags/beta.tar.gz"
    sha256 "fac83529f51cef611641061743a8674b4073e5ac230d8b4865bbaf95166baebb"
    version "b0.0.1"
    license "MIT"
  
    depends_on "python@3.9"

    def install
        virtualenv_install_with_resources
    end
  end