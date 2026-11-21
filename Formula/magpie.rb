class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4639/magpie-cli-darwin-arm64"
      sha256 "7dcc74c9797719e43bd702aedcecb07206f6b600e2878c06fdf69048b3db1af6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4639/magpie-cli-darwin-amd64"
      sha256 "6ea2286cdde83b2908037857cb25a3a68ebb4774dbb54d7af2a1834a9ca4705a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4639/magpie-cli-linux-arm64"
      sha256 "fe7f8deb49b736e0ed629fd7327a8b304e501e7b3ec59783d64d6e65fe4a4fbf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4639/magpie-cli-linux-amd64"
      sha256 "7b7ac6124d221ddd7356cc42bb2c6bdd8dc96c1f244e9ccc4713e82263a54e3b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
