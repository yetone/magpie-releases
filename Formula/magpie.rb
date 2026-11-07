class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3240/magpie-cli-darwin-arm64"
      sha256 "1d559c26acebaa06db931461cfdeabafae5c029e9892ba0d39d8186590bd1114"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3240/magpie-cli-darwin-amd64"
      sha256 "567e37fdf5f2d8c792c890f3090c574a896446d508b112200fa5a015c5ffe086"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3240/magpie-cli-linux-arm64"
      sha256 "8844d9a7771a82bd3a212e185e19ee5f42663658261434feb45db6f17f3b298b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3240/magpie-cli-linux-amd64"
      sha256 "1641bcef101dda1d6caae3addc126665b17ed540fff6afbcb5b64246233fa231"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
