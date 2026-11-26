class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4837/magpie-cli-darwin-arm64"
      sha256 "cf13db4451eb5d3e60cb337e691a26f5d1329bc6e781d9efd210fe9e87d29d4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4837/magpie-cli-darwin-amd64"
      sha256 "4208f51d2da09bafa4a29de6ae787ad2bfc4ce65f08d173dd1c4c0fe7a0f7ea2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4837/magpie-cli-linux-arm64"
      sha256 "4bc0ad438b6eb69077ce796e20b7ce4a972a5b9d7cb92462bc83754a240e8392"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4837/magpie-cli-linux-amd64"
      sha256 "007118f2788e86ba3a487cba70a346fa5e22da63dac238e128df23ecd54e316a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
