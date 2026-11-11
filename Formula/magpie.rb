class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3690/magpie-cli-darwin-arm64"
      sha256 "8e4ec31f2cb158abf97e97b0a2fb8e50b18e981e3e940eb30c397cb308784071"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3690/magpie-cli-darwin-amd64"
      sha256 "ce86b151540f5d4258523db3ac0f23033d9cff943d66c199ab5effdf1fb94d18"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3690/magpie-cli-linux-arm64"
      sha256 "c5e5bf149cebf325644b7094d0d293bcdb439fedab2043023c119eebf2c56ba6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3690/magpie-cli-linux-amd64"
      sha256 "aaff1b26411885cccdedcb50829ac1a5154bb55e4a366fb41f526734a54b843c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
