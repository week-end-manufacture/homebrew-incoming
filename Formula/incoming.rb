class Incoming < Formula
    include Language::Python::Virtualenv

    desc "Our best file encoder"
    homepage "https://github.com/week-end-manufacture/incoming"
    url "https://github.com/week-end-manufacture/incoming/archive/refs/tags/beta0.0.1.tar.gz"
    sha256 "96ad7ea660e5539238f9f6d7768b065a98fde2ae8791eec6476583ec21ad9b6d"
    version "beta0.0.1"
    license "MIT"
  
    depends_on "python@3.9"

    def install
        virtualenv_install_with_resources
    end
  end