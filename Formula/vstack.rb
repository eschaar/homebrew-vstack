class Vstack < Formula
  include Language::Python::Virtualenv

  desc "VS Code-native AI engineering workflow system"
  homepage "https://github.com/eschaar/vstack"
  url "https://files.pythonhosted.org/packages/c0/40/4dfa742a7bc8823ad46bc019fb53de544d90e67318ef81f602f4a7abe0ea/vstack-3.7.7.tar.gz"
  sha256 "ec60dc0dad24a92561cf0184ab0c3bbd75196663165c7eb529a87d6f75fe4abc"
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
