class Vstack < Formula
  include Language::Python::Virtualenv

  desc "VS Code-native AI engineering workflow system"
  homepage "https://github.com/eschaar/vstack"
  url "https://files.pythonhosted.org/packages/a3/f2/7af4672b053ee1c59897a6717a6b5ce3db343a5af9384df50a71b5599bae/vstack-3.7.8.tar.gz"
  sha256 "0aa6ddbf8a3cb2072782c1a75ff1bfccc7525010e4126fee33b51bcdc9888602"
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
