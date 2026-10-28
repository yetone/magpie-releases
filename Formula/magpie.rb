class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1953/magpie-cli-darwin-arm64"
      sha256 "593039a79545edd31d8a2f998c60c46516035c894f8fbf6aaed4d770a1117f3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1953/magpie-cli-darwin-amd64"
      sha256 "ec2d8c8f6a260021110b0926e0b0ac10e612b52a4b9d4b7bedc9872395dd8de5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1953/magpie-cli-linux-arm64"
      sha256 "2d603720a7950230dbc0a4f28fc4e1d7c61929f78d2958ec730b3c1689dc91df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1953/magpie-cli-linux-amd64"
      sha256 "1730b9f4b7b4d9bbb088c4c1c7e752f252f85e187fe8ec4fd4797192f09cf2a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
