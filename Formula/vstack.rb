class Vstack < Formula
  include Language::Python::Virtualenv

  desc "VS Code-native AI engineering workflow system"
  homepage "https://github.com/eschaar/vstack"
  url "https://files.pythonhosted.org/packages/f7/70/f89216b568a067ac1840149a22205/3f60ea0ee9ff2da53ace36620eaac56/vstack-3.5.2.tar.gz"
  sha256 "b185d9d9f67b3076f4c059290361bdd5fb7e15870e7cb79a47d9bbaf58463e36"
  license "MIT"

  depends_on "python@3.13"

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/vstack --help")
    assert_match(/usage:/i, output)
  end
end
