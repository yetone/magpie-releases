class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1866/magpie-cli-darwin-arm64"
      sha256 "d2405c5a42ec1bdca3360ab8ec52fc6625d31ed86087136eafdf23fd4eda922e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1866/magpie-cli-darwin-amd64"
      sha256 "57d9ac5de2ac3607141107e8e54ff59f7fc1d4994dc8eb7aab0d5e8517b7ec56"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1866/magpie-cli-linux-arm64"
      sha256 "55ef75c19fbb952560b6b287a06564dca1f78621ed85f8dead64bac5198c4ed3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1866/magpie-cli-linux-amd64"
      sha256 "446f4d0da14e0c18780830e108bc4395f6d3d0e57e7b6a742f6e918db502403f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
