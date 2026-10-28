class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1914/magpie-cli-darwin-arm64"
      sha256 "9a9798c04a66687ed78d1fd2cd69f94aad5ae9dc5eb892285af1d45d2ec82e7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1914/magpie-cli-darwin-amd64"
      sha256 "1560b556364eb506a858d345e7e63af0b88157715da9e48338321888252f1ad8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1914/magpie-cli-linux-arm64"
      sha256 "8d28d5503c05b48b612eb50c71c1482750726407022924d9bc2b5f34056af2e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1914/magpie-cli-linux-amd64"
      sha256 "fe6054bcbe4796b26240fc7719f3f6e91fd83b9d23c98eb3ec6a472706482b9f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
