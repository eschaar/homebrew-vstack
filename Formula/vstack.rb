class Vstack < Formula
  include Language::Python::Virtualenv

  desc "VS Code-native AI engineering workflow system"
  homepage "https://github.com/eschaar/vstack"
  url "https://files.pythonhosted.org/packages/a8/e2/261ed064f28a5a3af953657c836acdfaf369fda6aaee8cf29d23e5443f13/vstack-3.7.3.tar.gz"
  sha256 "67f200f9eec06cab62abbc7a3fdb7d11a0466f63f8742a2767214361172af6dd"
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
