class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2170/magpie-cli-darwin-arm64"
      sha256 "22f9e4b8017457f4c2d3ebfe5d602303e2b40bcce2f5d6579cf98d1e20435c91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2170/magpie-cli-darwin-amd64"
      sha256 "d3c31d01f463265ef698d7b9dcef02bf0e1f578c767864e6940fc034da1cd5f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2170/magpie-cli-linux-arm64"
      sha256 "f5751b18830fd10c782e1dc8361b23db91dbfc86b6020ec16e94899e26542a71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2170/magpie-cli-linux-amd64"
      sha256 "5279c76b35e60114dfcf22e779e77ad315299436cfaebf9a1bacaf9a91880a0d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
