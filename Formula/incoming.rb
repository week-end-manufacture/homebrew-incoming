class Incoming < Formula
    include Language::Python::Virtualenv

    desc "Our best file encoder"
    homepage "https://github.com/week-end-manufacture/incoming"
    url "https://github.com/week-end-manufacture/incoming/archive/refs/tags/beta.tar.gz"
    sha256 "7f8be2fdbf21a342166ee0b5d0f106992be4bc3098f5f3e4218693472747e0b3"
    version "b0.0.1"
    license "MIT"
  
    depends_on "python@3.y"

    def install
        venv = virtualenv_create(libexec, "python3.y")
        venv.pip_install "./requirements.txt"


    end
  end