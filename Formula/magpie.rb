class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4531/magpie-cli-darwin-arm64"
      sha256 "59f31bfb9fd2201a3aae9ebf811adde3b420285c04e2fb9cd9d13423bd44767a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4531/magpie-cli-darwin-amd64"
      sha256 "c638ec2563ee7b1c56c77060a3c98ba9ba68acf95b3b2f500b860fafd0488cc1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4531/magpie-cli-linux-arm64"
      sha256 "6255db1a0e81fef42abb30338bdbfddedbff723e247d03a26877063a58fd18d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4531/magpie-cli-linux-amd64"
      sha256 "b0e43f2fe0b475e286bc3974f705a2957c02924b5b0cf1c59c1d4fe0c021fb07"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
