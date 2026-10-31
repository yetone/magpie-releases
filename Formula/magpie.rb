class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2356/magpie-cli-darwin-arm64"
      sha256 "115a9126edab629d485602d0215ba30e848c31c91d35c5abc99d5c6dc1226c88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2356/magpie-cli-darwin-amd64"
      sha256 "23180f038f3b8a5c52e1d2e888b49cffc041df47f524581b4f30664108be55ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2356/magpie-cli-linux-arm64"
      sha256 "7f88d0d053196c697d974743622c7b27339b2bdf7c7b2cc6244f3e0dfd2c6388"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2356/magpie-cli-linux-amd64"
      sha256 "e38b5527c0f558229f5c2954785fe090f86e0487a0bec2ff741950d81e96aeef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
