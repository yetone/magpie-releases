class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3707/magpie-cli-darwin-arm64"
      sha256 "fc85c40e3e2cb24695f2c469989ae317f02be76c4d3c30929c0b13857ea7d230"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3707/magpie-cli-darwin-amd64"
      sha256 "8ea054b5116843523638485af70d28831737534af6a004ec89f536eb92d40ead"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3707/magpie-cli-linux-arm64"
      sha256 "ffad8b0d24286ee05fff3524dd7b5c0c8508fd3aad4de93113e16dc7282edc38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3707/magpie-cli-linux-amd64"
      sha256 "d52076c1cce4d4ac0706bdc9c4863d8e6a47e193ad1470ccfbf5c66abe820863"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
