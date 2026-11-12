class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3908/magpie-cli-darwin-arm64"
      sha256 "54136a065fa24c25cc3d836bd202ab13526c106a9db38f66cf60c2e7d4eb1f98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3908/magpie-cli-darwin-amd64"
      sha256 "f65f10c75fc37b56c55eab1b9f7eddda356a0cf1a2695b948f465139dde2873e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3908/magpie-cli-linux-arm64"
      sha256 "facc71e1475cd893240ec91a7be025bc408a485e9b5a77508f4b1f67bd05c855"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3908/magpie-cli-linux-amd64"
      sha256 "383da9dd34ec6e579ae9cba62c6b40fdfcab2eb496932169e308b1b3998032e4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
