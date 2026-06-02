class Vstack < Formula
  include Language::Python::Virtualenv

  desc "VS Code-native AI engineering workflow system"
  homepage "https://github.com/eschaar/vstack"
  url "https://files.pythonhosted.org/packages/e5/50/fe8c8220c952f7215b0cf97ea434af6c0d4eda372d95957da95a1539e7fc/vstack-3.4.2.tar.gz"
  sha256 "42e54d8e390b18d7b9c80df314fe593c017efebe959c2a5f1a031ffc140e084a"
  license "MIT"

  depends_on "python@3.11"

  resource "pyyaml" do
    url ""
    sha256 ""
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/vstack --help")
    assert_match "Usage:", output
  end
end
