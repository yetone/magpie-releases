class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3688/magpie-cli-darwin-arm64"
      sha256 "d91cd870f810531fa48c88cb47d29917a8c1a90982c84218e8033bad17b64798"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3688/magpie-cli-darwin-amd64"
      sha256 "02382e54c1fef255782d0d5a79cdcfa54df49ca7fa4d11d1f18e259a3379d306"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3688/magpie-cli-linux-arm64"
      sha256 "4d838dd3843d11834557c235e89b74dda3a55205822d0e76ee28e16fc22caeb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3688/magpie-cli-linux-amd64"
      sha256 "b3415e592aa1f65a3a00d6245faedca3556474e9546cdb16ba1020b5ff9d9a29"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
