class Incoming < Formula
    include Language::Python::Virtualenv

    desc "Our best file encoder"
    homepage "https://github.com/week-end-manufacture/incoming"
    url "https://github.com/week-end-manufacture/incoming/archive/refs/tags/b0.0.1.tar.gz"
    sha256 "cb2fbf71b242bd7e8da200498714301db7beb6576c07b77ac5a3ee29b6245cfe"
    version "b0.0.1"
    license "MIT"
  
    depends_on "python@3.9"

    def install
        virtualenv_install_with_resources
    end
  end