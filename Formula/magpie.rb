class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3564/magpie-cli-darwin-arm64"
      sha256 "949a67d0a5cfe694a560f014422e76f15af12a61d3f3094a54f8f15b789dce39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3564/magpie-cli-darwin-amd64"
      sha256 "01c5efb616180c69bfa4f06819e42fd196b487349a9cbd22099e974b4744bdec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3564/magpie-cli-linux-arm64"
      sha256 "be006edf261c1e78ff8337217f16759eba441b4ea8ce37fe506289f85d03e8e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3564/magpie-cli-linux-amd64"
      sha256 "7dee7741b731433de3c4eb53e67a7e7a81845b54cab694d7977a9f7d1ef2d3a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
