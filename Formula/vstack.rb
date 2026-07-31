class Vstack < Formula
  include Language::Python::Virtualenv

  desc "VS Code-native AI engineering workflow system"
  homepage "https://github.com/eschaar/vstack"
  url "https://files.pythonhosted.org/packages/b1/b7/3c9476efd54c0562e5ca44b2c4aa2c5d25a2b62ebf1363b3adbb5f8d0085/vstack-3.7.5.tar.gz"
  sha256 "d5218a7d2497e024af94c864669c28e7a49e4b12c40ff2d0c750b8ee1e858699"
  license "MIT"

  depends_on "libyaml"
  depends_on "python@3.13"

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # Run through the formula virtualenv Python to avoid relying on system Python.
    venv_python = libexec/"bin/python3"
    output = shell_output("#{venv_python} #{bin}/vstack --help")
    assert_match(/usage:/i, output)
  end
end
