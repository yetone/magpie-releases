class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3192/magpie-cli-darwin-arm64"
      sha256 "bfd3782c78541002bc135012e0f45bddd18abd9d7da978a32a38221c133f605a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3192/magpie-cli-darwin-amd64"
      sha256 "2e4e3c07f7017c5984fb13996c0124b13575e02f959e21950ce818585f88660d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3192/magpie-cli-linux-arm64"
      sha256 "f30194d5f96c059cafe908b962d2e971d8bba7453268bd5fbae3d3b8dcde06c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3192/magpie-cli-linux-amd64"
      sha256 "811f869ef6be4111aa741bee7adfe2b199fa5f02e8224e8661cc2d3b4b357210"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
