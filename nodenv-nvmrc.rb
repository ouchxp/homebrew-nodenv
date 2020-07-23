class NodenvNvmrc < Formula
  desc "Pick a node version from .nvmrc"
  homepage "https://github.com/ouchxp/nodenv-nvmrc"
  url "https://github.com/ouchxp/nodenv-nvmrc/archive/v1.0.4.tar.gz"
  sha256 "375d129f7abecd81c88f871fb492f79fc7e23e9ecee144e299ace2bf7a0da0cf"
  head "https://github.com/ouchxp/nodenv-nvmrc.git"

  depends_on "nodenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match /\bnvmrc\b/, shell_output("nodenv hooks which")
  end
end
