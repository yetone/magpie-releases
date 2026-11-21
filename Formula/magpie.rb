class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4628/magpie-cli-darwin-arm64"
      sha256 "da5a688d15e46e82d2a2396e212dd1646504436cd3cf72e5f6c8d5f059dad18a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4628/magpie-cli-darwin-amd64"
      sha256 "c1aa39cb85094d898f28db09fb9af854304c4314fe6f12061e6e31ab5c7231dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4628/magpie-cli-linux-arm64"
      sha256 "58a294cd660b75b9f73c3824990cda042074e154eea84f662949a587a3a16731"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4628/magpie-cli-linux-amd64"
      sha256 "f63c537e6ca2593e770eb9c9afea3cd70022720607e63e2d39127185f3d724bc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
