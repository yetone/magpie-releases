class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3422/magpie-cli-darwin-arm64"
      sha256 "f81efb7ca6ea697eb4383bf6dc33dd3327c8c7359e16b48a101a4e1f0e684471"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3422/magpie-cli-darwin-amd64"
      sha256 "6dae149a41f4eb6b53ab1b6771463fc60152e4c4e60fa1ebd70a20f6e06abea5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3422/magpie-cli-linux-arm64"
      sha256 "9ec756315ed0f7c558a2e598d0c606fe675bf2929f2881b2613c0d114c29e43e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3422/magpie-cli-linux-amd64"
      sha256 "7ef44a819ef9203207089dff6c80059f0458a2e3402d2b0d998212c0d037bd14"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
