class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2402/magpie-cli-darwin-arm64"
      sha256 "a24e7cc781e0c13389c1a6e4e2aa8f98f80dcc83247180d332e7d582f16493e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2402/magpie-cli-darwin-amd64"
      sha256 "db5326eba13653b0ea8b663821c09757d4ff73dade048038d3c4ed8b5e1b77f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2402/magpie-cli-linux-arm64"
      sha256 "ab1ae1be630f0a2103fc3ed5be65846539490b382865422080a21cfb6f0fd3c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2402/magpie-cli-linux-amd64"
      sha256 "5895371b423e9e26d0cccc92cbfb59db86941923c752c2e01fb76658812623c9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
