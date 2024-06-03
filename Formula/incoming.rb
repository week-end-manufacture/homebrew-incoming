class Incoming < Formula
    include Language::Python::Virtualenv

    desc "Our best file encoder"
    homepage "https://github.com/week-end-manufacture/incoming"
    url "https://github.com/week-end-manufacture/incoming/archive/refs/tags/b0.0.1.tar.gz"
    sha256 "4650bb9edbbaeda6289e537a1572c32c8ebcd921c77b0994606dbc5120e1f503"
    version "beta0.0.1"
    license "MIT"
  
    depends_on "python@3.9"

    def install
        virtualenv_install_with_resources
    end
  end