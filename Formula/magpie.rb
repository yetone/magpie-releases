class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4978/magpie-cli-darwin-arm64"
      sha256 "900fc1f0476a9c6af56e1c495a9c3811c046fcdbf2a783dd0901d9beb49fcae4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4978/magpie-cli-darwin-amd64"
      sha256 "a84ec4b2be588610728857295a17f17349d7b72fae636f74e8c4e27d13874837"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4978/magpie-cli-linux-arm64"
      sha256 "981a8d0c0157d181ccd2ea7b824a8d02a607fe5e763c3047d46d8b3903cc89af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4978/magpie-cli-linux-amd64"
      sha256 "7ebaff158e09788666c62f8c8b045e842ab31e397163ced8c8c704bbedde77d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
