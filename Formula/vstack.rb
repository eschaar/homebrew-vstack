class Vstack < Formula
  include Language::Python::Virtualenv

  desc "VS Code-native AI engineering workflow system"
  homepage "https://github.com/eschaar/vstack"
  url "https://files.pythonhosted.org/packages/8c/b9/c14ae0b9450e6927e98e325d3389dcf7850869a52f13cffc21888cce1204/vstack-3.5.1.tar.gz"
  sha256 "c92b15941bbecd120452dce034beadbac5b7227cdd5feb1a68b98d6bdae397ae"
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
