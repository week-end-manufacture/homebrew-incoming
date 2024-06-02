class Incoming < Formula
    desc "Our best file encoder"
    homepage "https://github.com/week-end-manufacture/incoming"
    url "https://github.com/week-end-manufacture/incoming/releases/download/beta/incoming.tar.gz"
    sha256 "7f8be2fdbf21a342166ee0b5d0f106992be4bc3098f5f3e4218693472747e0b3"
    version "b0.0.1"
    license "MIT"
  
    depends_on "python@3.y"

    def install
        virtualenv_install_with_resources
    end
  end