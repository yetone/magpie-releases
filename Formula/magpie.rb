class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4335/magpie-cli-darwin-arm64"
      sha256 "d265e7772c7cc87fefce7527cb488346b040912b6e8ea24d7e5b6868a8123390"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4335/magpie-cli-darwin-amd64"
      sha256 "5dc6f61f8bb48fae540a7baf491abe32bfe18c7d7ddb359efa9b296d5b374402"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4335/magpie-cli-linux-arm64"
      sha256 "b5167e8b92e98b39ec596003d104042c989c84f306c0791bd96f354ea24715e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4335/magpie-cli-linux-amd64"
      sha256 "7b07bf1c1102ac7716116cd5a4fab08a4bc69a23072c8710cfc21534bff4c175"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
