class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4198/magpie-cli-darwin-arm64"
      sha256 "a78b3d29ae0e9698d610d85ae5566b694fa21ace73ebe83d35cc05338e2142cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4198/magpie-cli-darwin-amd64"
      sha256 "999e8538e8373a36fb8150da1873e4d66d2203ee20d678ab8ee9a617bb1d3bbf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4198/magpie-cli-linux-arm64"
      sha256 "f669d26d4a74379b4c97c9cba555a7b3bd8adc07452697df556348e0590b3458"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4198/magpie-cli-linux-amd64"
      sha256 "071404f7ba60826d8f04625a52a9f544e444f0ae4e20312348fcc10e1cbc5fc3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
