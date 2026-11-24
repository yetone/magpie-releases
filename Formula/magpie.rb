class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4743/magpie-cli-darwin-arm64"
      sha256 "12e382fa8ca435d9958b8535937a48a85c055e091bd3dc679a466d61754ef44e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4743/magpie-cli-darwin-amd64"
      sha256 "fd539456d5c38ade33c9ee1ec81378f880083b2ec2c4479ceaa038b7d1e7878f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4743/magpie-cli-linux-arm64"
      sha256 "298c92c20583729b53b616024bddf6619cbbfba2215e62d9ed47308357f56ae1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4743/magpie-cli-linux-amd64"
      sha256 "10f1b331c26bef2937080068751014b734427ca9ae44e2904fdffcb46e9f40a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
