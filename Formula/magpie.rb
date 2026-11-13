class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4072/magpie-cli-darwin-arm64"
      sha256 "388f40be70e5c59a326db6a3557d81a900d242110684bf3ee5eccbe555b99181"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4072/magpie-cli-darwin-amd64"
      sha256 "235752621e7d29d8bfd49763ec41de19e2bf4a6f230be5817524c086e6fecf86"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4072/magpie-cli-linux-arm64"
      sha256 "d21cb1e992967276e5a754af23c484dfff2e25b15c3db49657f828c431d7d70d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4072/magpie-cli-linux-amd64"
      sha256 "71ff079398f72a1802397d1d09bed2ff49d2f323c37dde0113bbd9b5b1f24f0d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
