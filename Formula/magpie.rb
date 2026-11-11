class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3667/magpie-cli-darwin-arm64"
      sha256 "8d21129ecf0606e29f80e252e652bb13c41637307c854f5449f9fb99a0b0d028"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3667/magpie-cli-darwin-amd64"
      sha256 "c5273a95bae4a3bdda48480327ebfc69440635b7d18d734f98f5f9ef7f8c3227"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3667/magpie-cli-linux-arm64"
      sha256 "0eecafb54c1304041f85723147cc8775ef06d35df5b232045843cd96dfcbf7ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3667/magpie-cli-linux-amd64"
      sha256 "8c942e835d717f85e6c43d77ecb06c0cd025623afd17d49781ffbcea980124c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
