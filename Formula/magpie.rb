class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2119/magpie-cli-darwin-arm64"
      sha256 "ff25815b3ecffe0b10ffcc86c5564e5c343f85343a24edc276acd5e788fed01b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2119/magpie-cli-darwin-amd64"
      sha256 "0ed2c4bfe646e22c21d0f974b973366b87da7250211226b60369c4c6387643f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2119/magpie-cli-linux-arm64"
      sha256 "9351311a79bbcde1c912b3648b83f673b7d93b86d5770ace17de21af1cd33948"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2119/magpie-cli-linux-amd64"
      sha256 "7e8baf80ac6cbac711c73d381a523d1981039dfe49ed9c048b62fbf0a482deb8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
