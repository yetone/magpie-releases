class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2582/magpie-cli-darwin-arm64"
      sha256 "4bd3696fc9886dc21ab0faa2a369aa1ebcd5dba6578e385542b2698657f77f27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2582/magpie-cli-darwin-amd64"
      sha256 "7e59289f0ae26ad7649a3876d604aeaf38cd79ffa41ce01ed54dd3b77f490b1a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2582/magpie-cli-linux-arm64"
      sha256 "455ac256254b1b2cab337e98487e97f8d6a21ec255b4fe78ca1997211a4e79ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2582/magpie-cli-linux-amd64"
      sha256 "889cf33bf032d0859db328b5383b33f16717e5dd4d4060d72d0d650a9d4bfcd4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
