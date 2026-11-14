class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4199/magpie-cli-darwin-arm64"
      sha256 "bd692c7fe88e254958b0cbf6607b1509a7cab1fe19fa302996360a4998c49aa8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4199/magpie-cli-darwin-amd64"
      sha256 "9a84a93239f0e9df0ce8bd0c2f2e249b992c784048d18b4ac433b1340a6ae199"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4199/magpie-cli-linux-arm64"
      sha256 "321cdb338e9909da82789cd3313dc8e859d222689644b84c56739c999a5e9158"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4199/magpie-cli-linux-amd64"
      sha256 "03a00d6c3eba3c7af8d231c9fe1e127a4229cec36c9b6ce55370e8d6f13032ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
