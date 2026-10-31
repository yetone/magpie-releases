class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2395/magpie-cli-darwin-arm64"
      sha256 "089ec42ef6827b87d06c25c0f0988bdf4efdb0e30b5808974531c093d4254954"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2395/magpie-cli-darwin-amd64"
      sha256 "f581a586a0bce594bb0d55cbc69bb342bae84ce74a66dfe4f35f1b4776d138b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2395/magpie-cli-linux-arm64"
      sha256 "cec11dc0dcd3a4c6d609214b114fbfab270d491969fcd18e530e2eb18d9872a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2395/magpie-cli-linux-amd64"
      sha256 "150eedbb7a187f420cbd5c0935f0a07f4e90619427e45c9d710bc76c425a0eac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
