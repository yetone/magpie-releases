class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1977/magpie-cli-darwin-arm64"
      sha256 "0b4bd973733fbff776e774801d4dd11dd3c36314c8979d42088970123d73a3e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1977/magpie-cli-darwin-amd64"
      sha256 "6d9c0f041bb4697fef5f4bfd4231865b3c82a4c12d91f11270954ac23ef50de6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1977/magpie-cli-linux-arm64"
      sha256 "5c909e7475e6d03d92f11929a80dacafcba2178317c2751f879dc43c9733c52e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1977/magpie-cli-linux-amd64"
      sha256 "6d374ae9839bc7798eaa7fa3535ce44b74ea4b67cb91be71c692ffc5801c5b33"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
