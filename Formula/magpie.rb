class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4321/magpie-cli-darwin-arm64"
      sha256 "5c6575503a757b32cc5ec523347ea18d47ceb0f727d619176dc6634752d24493"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4321/magpie-cli-darwin-amd64"
      sha256 "775f81ec38788e0f9e090b6eac1a3b7efb3983e3f16f5d31a75c85e981252d0c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4321/magpie-cli-linux-arm64"
      sha256 "c338d4469dd59d6588f9eef7000d2d04ef7169a9842e8ea4908d631a0311a130"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4321/magpie-cli-linux-amd64"
      sha256 "db9344902e3d6134de4d5c7289cf5c91abf5b99e2876c2757d452f4150f7f9f2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
