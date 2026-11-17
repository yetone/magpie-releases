class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4384/magpie-cli-darwin-arm64"
      sha256 "6e54d6a4ff2f596e0c26f48a8d581cf72536bdd45dcbcc7965e42a6908a24ae3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4384/magpie-cli-darwin-amd64"
      sha256 "78cd19d3cfa422a46d905a1d9176d89005da473e19d08365cba2bda68d086411"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4384/magpie-cli-linux-arm64"
      sha256 "ad36a1a3b6ecd9c720e9dfdb9e64be2f1420bca1af030d608d3537a96cc51988"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4384/magpie-cli-linux-amd64"
      sha256 "5a861ea150e74e9aaf586b2a8642ae1e667f9c4d35104babb38ec95f6c8d1f63"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
