class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4263/magpie-cli-darwin-arm64"
      sha256 "01b49f23428be00ed86501ec4014f11602ab08c2de15e1a5b42ac7468524c48e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4263/magpie-cli-darwin-amd64"
      sha256 "9194491a75a2999901211878b9da4794bafcc0ffc39b5cd9be61e9beea066b96"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4263/magpie-cli-linux-arm64"
      sha256 "83f70bb18c0b4a1f04caf360b99bdf3ced36a85913f29a26985683dec126e4bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4263/magpie-cli-linux-amd64"
      sha256 "4dadc5f6f69acc913a533a7bbed55d7b4ee86af4e1a8dce72b8d707530e335e9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
