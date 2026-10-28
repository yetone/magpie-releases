class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1937/magpie-cli-darwin-arm64"
      sha256 "35a98abca2a037dcdd01f524a8a69bbf453ce0273f497193b6fb605c1d23e22e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1937/magpie-cli-darwin-amd64"
      sha256 "0ead07ccd96b402c350d46697c52218f2aeff87a8a02404e155c3ee6f5abafa3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1937/magpie-cli-linux-arm64"
      sha256 "eb7b9322a2f2d25f1a8710de4d950c4f9ec856e19a20424f65fc7b05a1aa98ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1937/magpie-cli-linux-amd64"
      sha256 "3705e8c736089b42543cb1e5f237622cd03858d00fe9c5cd170ed678cbe739ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
