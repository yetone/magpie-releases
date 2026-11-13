class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4082/magpie-cli-darwin-arm64"
      sha256 "20796e1259830bb0583b2a5786ed67736e336d3a6e2d172f95f42b143b8df318"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4082/magpie-cli-darwin-amd64"
      sha256 "7c77d9284e5bdafee2332ba397d3f78d4c638034ba088fa633ee860eb6768eb9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4082/magpie-cli-linux-arm64"
      sha256 "90f0a2da238235ed367fe8e8b3ef089133aa8767936210af70d244b606f7b6bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4082/magpie-cli-linux-amd64"
      sha256 "3176dfa3fd751063d277f55750f9e0136e7717e302e1429ffd7a49c0744655a9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
