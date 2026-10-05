class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1008/magpie-cli-darwin-arm64"
      sha256 "e9e379a22a49fee467c76a178a5be396d6014998384d7c5b56d25743f5e74350"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1008/magpie-cli-darwin-amd64"
      sha256 "6ab3569fb996b6653b6fb14036119688516b80445790e96076c6ccaf99d6d29d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1008/magpie-cli-linux-arm64"
      sha256 "98e1ff25a7829bcfb800f4c7ed9858839bb2e5ee2a82b935c90aeaf50dc6959b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1008/magpie-cli-linux-amd64"
      sha256 "293d550ec36d268c82fdf356a915f1078fcd8b5feec633b7ab053f06b601e6d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
