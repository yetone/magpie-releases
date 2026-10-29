class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2008/magpie-cli-darwin-arm64"
      sha256 "801e4fd0c2564f2cfa4e2a8885c702c6d3412bac1a69ae952ae0fa389189236d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2008/magpie-cli-darwin-amd64"
      sha256 "68eac7734443d07c65ae899e25ca311c1cc22d4e7e5adc917ad7f3b1144987f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2008/magpie-cli-linux-arm64"
      sha256 "758e4a85705739206395a95e3f05ba35d0ac03a3e398bae38ebff68d620ed1aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2008/magpie-cli-linux-amd64"
      sha256 "0e43f5e4183b76827d80750b1b3647b683167c3d3d0e387535e79c1253801106"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
