class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4907/magpie-cli-darwin-arm64"
      sha256 "911a0bba6291d64bb11d33547348cae113d482f53ddaa5820ae040240530b3a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4907/magpie-cli-darwin-amd64"
      sha256 "2cc67fb3536cdad50689e9d4a60cd4d3f219b69e9d254cf11fd3484243679f68"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4907/magpie-cli-linux-arm64"
      sha256 "a1f9672158b211be5543d30d62bf9e7bd334cc96f73b31ddccfe851ecb93a326"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4907/magpie-cli-linux-amd64"
      sha256 "9b5599550beb55fcb487f5316cf5756ea0c54072116682978ab9b53950b1a439"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
