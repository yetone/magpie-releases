class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2524/magpie-cli-darwin-arm64"
      sha256 "9590569035dfa2a5b0f22e7a0e2f364d0aaab2aba20e23daf5f9b40043819acb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2524/magpie-cli-darwin-amd64"
      sha256 "3fa1dd16f2755e43c61ea0eb084cac7ff1352883fdb398cc868c01c9c57718ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2524/magpie-cli-linux-arm64"
      sha256 "d0bb6a6d05cf178949d3f090fbf432ffe89316735ab482d4a8f407348979c527"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2524/magpie-cli-linux-amd64"
      sha256 "60719003b0083d42aea3feb29b74a9e99f930e03b61bd913dba37b7c301109e6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
